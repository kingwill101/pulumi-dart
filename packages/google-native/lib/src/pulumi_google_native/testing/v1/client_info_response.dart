// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_detail_response.dart';

/// Information about the client which invoked the test.
class ClientInfoResponse {
  /// The list of detailed information about client.
  final List<ClientInfoDetailResponse> clientInfoDetails;

  /// Client name, such as gcloud.
  final String name;

  ClientInfoResponse({
    required this.clientInfoDetails,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientInfoDetails'] =
        pulumi.Input.encodeList<ClientInfoDetailResponse, Map<String, dynamic>>(
            clientInfoDetails, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory ClientInfoResponse.fromMap(Map<String, dynamic> map) {
    return ClientInfoResponse(
      clientInfoDetails: pulumi.Input.decodeList<ClientInfoDetailResponse>(
          map['clientInfoDetails'],
          (value) => ClientInfoDetailResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
