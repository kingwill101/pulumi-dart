// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateways_gateway.dart';

/// Result data returned by getGateways.
class GetGatewaysResult {
  final bool? enableDetails;
  final String? gatewayName;
  final List<GetGatewaysGateway> gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final String? vpcId;

  /// Creates a new [GetGatewaysResult].
  /// [enableDetails] Optional.
  /// [gatewayName] Optional.
  /// [gateways] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [vpcId] Optional.
  GetGatewaysResult({
    this.enableDetails,
    this.gatewayName,
    required this.gateways,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'gatewayName': ?gatewayName,
      'gateways': pulumi.Input.encodeList<GetGatewaysGateway, Map<String, dynamic>>(gateways, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetGatewaysResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      gatewayName: map['gatewayName'] == null ? null : map['gatewayName']! as String,
      gateways: pulumi.Input.decodeList<GetGatewaysGateway>(map['gateways'], (value) => GetGatewaysGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
    );
  }
}

