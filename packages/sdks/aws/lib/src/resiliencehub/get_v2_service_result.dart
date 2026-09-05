// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v2_service_associated_system.dart';
import 'get_v2_service_permission_model.dart';

/// Result data returned by getV2Service.
class GetV2ServiceResult {
  final String? arn;
  /// Systems associated with the service. See `associatedSystem` Block below.
  final List<GetV2ServiceAssociatedSystem>? associatedSystems;
  /// Description of the service.
  final String? description;
  /// KMS key ARN.
  final String? kmsKeyId;
  /// Name of the service.
  final String? name;
  /// Permission model configuration. See `permissionModel` Block below.
  final List<GetV2ServicePermissionModel>? permissionModels;
  /// ARN of the associated resilience policy.
  final String? policyArn;
  final String? region;
  /// List of AWS regions where the service operates.
  final List<String>? regions;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetV2ServiceResult].
  /// [arn] Optional.
  /// [associatedSystems] Systems associated with the service. See `associatedSystem` Block below.
  /// [description] Description of the service.
  /// [kmsKeyId] KMS key ARN.
  /// [name] Name of the service.
  /// [permissionModels] Permission model configuration. See `permissionModel` Block below.
  /// [policyArn] ARN of the associated resilience policy.
  /// [region] Optional.
  /// [regions] List of AWS regions where the service operates.
  /// [tags] Map of tags assigned to the resource.
  const GetV2ServiceResult({
    this.arn,
    this.associatedSystems,
    this.description,
    this.kmsKeyId,
    this.name,
    this.permissionModels,
    this.policyArn,
    this.region,
    this.regions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associatedSystems': ?(() { final guardedValue = associatedSystems; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetV2ServiceAssociatedSystem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'permissionModels': ?(() { final guardedValue = permissionModels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetV2ServicePermissionModel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyArn': ?policyArn,
      'region': ?region,
      'regions': ?regions,
      'tags': ?tags,
    };
  }

  factory GetV2ServiceResult.fromMap(Map<String, dynamic> map) {
    return GetV2ServiceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associatedSystems: (() { final guardedValue = map['associatedSystems']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetV2ServiceAssociatedSystem>(guardedValue, (value) => GetV2ServiceAssociatedSystem.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissionModels: (() { final guardedValue = map['permissionModels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetV2ServicePermissionModel>(guardedValue, (value) => GetV2ServicePermissionModel.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
