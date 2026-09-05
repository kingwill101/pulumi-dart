// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_service_associated_system.dart';
import 'v2_service_permission_model.dart';

/// Input properties used for looking up and filtering V2Service resources.
class V2ServiceState {
  /// ARN of the service.
  final pulumi.Input<String?>? arn;
  /// Systems to associate with the service. See `associatedSystem` Block below.
  final pulumi.Input<List<V2ServiceAssociatedSystem>?>? associatedSystems;
  /// Dependency discovery. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? dependencyDiscovery;
  /// Description of the service.
  final pulumi.Input<String?>? description;
  /// KMS key ARN.
  final pulumi.Input<String?>? kmsKeyId;
  /// Name of the service. Changing this value requires creating a new resource.
  final pulumi.Input<String?>? name;
  /// Permission model for resource discovery. See `permissionModel` Block below.
  final pulumi.Input<V2ServicePermissionModel?>? permissionModel;
  /// ARN of the resilience policy to associate with this service.
  final pulumi.Input<String?>? policyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of AWS regions where the service operates.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>?>? regions;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [V2ServiceState].
  /// [arn] ARN of the service.
  /// [associatedSystems] Systems to associate with the service. See `associatedSystem` Block below.
  /// [dependencyDiscovery] Dependency discovery. Valid values: `ENABLED`, `DISABLED`.
  /// [description] Description of the service.
  /// [kmsKeyId] KMS key ARN.
  /// [name] Name of the service. Changing this value requires creating a new resource.
  /// [permissionModel] Permission model for resource discovery. See `permissionModel` Block below.
  /// [policyArn] ARN of the resilience policy to associate with this service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regions] List of AWS regions where the service operates.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const V2ServiceState({
    this.arn,
    this.associatedSystems,
    this.dependencyDiscovery,
    this.description,
    this.kmsKeyId,
    this.name,
    this.permissionModel,
    this.policyArn,
    this.region,
    this.regions,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associatedSystems': ?pulumi.Input.mapOptionalInputValue<List<V2ServiceAssociatedSystem>, List<Map<String, dynamic>>>(associatedSystems, (value) => pulumi.Input.encodeList<V2ServiceAssociatedSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dependencyDiscovery': ?dependencyDiscovery,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'permissionModel': ?pulumi.Input.mapOptionalInputValue<V2ServicePermissionModel, Map<String, dynamic>>(permissionModel, (value) => value.toMap()),
      'policyArn': ?policyArn,
      'region': ?region,
      'regions': ?regions,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory V2ServiceState.fromMap(Map<String, dynamic> map) {
    return V2ServiceState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedSystems: (() { final guardedValue = map['associatedSystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2ServiceAssociatedSystem>(guardedValue, (value) => V2ServiceAssociatedSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dependencyDiscovery: (() { final guardedValue = map['dependencyDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionModel: (() { final guardedValue = map['permissionModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2ServicePermissionModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
