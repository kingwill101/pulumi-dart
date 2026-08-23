// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v2_service_associated_system.dart';
import 'get_v2_service_permission_model.dart';

/// Result data returned by getV2Service.
class GetV2ServiceResult {
  final String arn;
  /// Systems associated with the service. See `associatedSystem` Block below.
  final List<GetV2ServiceAssociatedSystem> associatedSystems;
  /// Description of the service.
  final String description;
  /// KMS key ARN.
  final String kmsKeyId;
  /// Name of the service.
  final String name;
  /// Permission model configuration. See `permissionModel` Block below.
  final List<GetV2ServicePermissionModel> permissionModels;
  /// ARN of the associated resilience policy.
  final String policyArn;
  final String region;
  /// List of AWS regions where the service operates.
  final List<String> regions;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetV2ServiceResult].
  /// [arn] Required.
  /// [associatedSystems] Systems associated with the service. See `associatedSystem` Block below.
  /// [description] Description of the service.
  /// [kmsKeyId] KMS key ARN.
  /// [name] Name of the service.
  /// [permissionModels] Permission model configuration. See `permissionModel` Block below.
  /// [policyArn] ARN of the associated resilience policy.
  /// [region] Required.
  /// [regions] List of AWS regions where the service operates.
  /// [tags] Map of tags assigned to the resource.
  const GetV2ServiceResult({
    required this.arn,
    required this.associatedSystems,
    required this.description,
    required this.kmsKeyId,
    required this.name,
    required this.permissionModels,
    required this.policyArn,
    required this.region,
    required this.regions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'associatedSystems': pulumi.Input.encodeList<GetV2ServiceAssociatedSystem, Map<String, dynamic>>(associatedSystems, (value) => value.toMap()),
      'description': description,
      'kmsKeyId': kmsKeyId,
      'name': name,
      'permissionModels': pulumi.Input.encodeList<GetV2ServicePermissionModel, Map<String, dynamic>>(permissionModels, (value) => value.toMap()),
      'policyArn': policyArn,
      'region': region,
      'regions': regions,
      'tags': tags,
    };
  }

  factory GetV2ServiceResult.fromMap(Map<String, dynamic> map) {
    return GetV2ServiceResult(
      arn: map['arn'] as String,
      associatedSystems: pulumi.Input.decodeList<GetV2ServiceAssociatedSystem>(map['associatedSystems']!, (value) => GetV2ServiceAssociatedSystem.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      name: map['name'] as String,
      permissionModels: pulumi.Input.decodeList<GetV2ServicePermissionModel>(map['permissionModels']!, (value) => GetV2ServicePermissionModel.fromMap((value as Map).cast<String, dynamic>())),
      policyArn: map['policyArn'] as String,
      region: map['region'] as String,
      regions: (map['regions'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
