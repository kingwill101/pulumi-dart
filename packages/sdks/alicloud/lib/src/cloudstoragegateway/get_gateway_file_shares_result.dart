// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_file_shares_share.dart';

/// Result data returned by getGatewayFileShares.
class GetGatewayFileSharesResult {
  final String gatewayId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetGatewayFileSharesShare> shares;

  /// Creates a new [GetGatewayFileSharesResult].
  /// [gatewayId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [shares] Required.
  GetGatewayFileSharesResult({
    required this.gatewayId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.shares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'shares':
          pulumi.Input.encodeList<
            GetGatewayFileSharesShare,
            Map<String, dynamic>
          >(shares, (value) => value.toMap()),
    };
  }

  factory GetGatewayFileSharesResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayFileSharesResult(
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      shares: pulumi.Input.decodeList<GetGatewayFileSharesShare>(
        map['shares']!,
        (value) => GetGatewayFileSharesShare.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
