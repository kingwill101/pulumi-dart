// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_detail.dart';

/// Information about the client which invoked the test.
class ClientInfo {
  /// The list of detailed information about client.
  final List<ClientInfoDetail>? clientInfoDetails;

  /// Client name, such as gcloud.
  final String name;

  ClientInfo({
    this.clientInfoDetails,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientInfoDetailsValue = clientInfoDetails;
    if (clientInfoDetailsValue != null) {
      map['clientInfoDetails'] =
          pulumi.Input.encodeList<ClientInfoDetail, Map<String, dynamic>>(
              clientInfoDetailsValue, (value) => value.toMap());
    }
    map['name'] = name;
    return map;
  }

  factory ClientInfo.fromMap(Map<String, dynamic> map) {
    return ClientInfo(
      clientInfoDetails: map['clientInfoDetails'] == null
          ? null
          : pulumi.Input.decodeList<ClientInfoDetail>(
              map['clientInfoDetails'],
              (value) => ClientInfoDetail.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
