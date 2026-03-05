// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceVolumeConfigurationManagedEbsVolumeTagSpecification {
  /// Determines whether to propagate the tags from the task definition to the Amazon EBS volume.
  final pulumi.Input<String>? propagateTags;
  /// The type of volume resource. Valid values, `volume`.
  final pulumi.Input<String> resourceType;
  /// The tags applied to this Amazon EBS volume. `AmazonECSCreated` and `AmazonECSManaged` are reserved tags that can't be used.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceVolumeConfigurationManagedEbsVolumeTagSpecification].
  /// [propagateTags] Determines whether to propagate the tags from the task definition to the Amazon EBS volume.
  /// [resourceType] The type of volume resource. Valid values, `volume`.
  /// [tags] The tags applied to this Amazon EBS volume. `AmazonECSCreated` and `AmazonECSManaged` are reserved tags that can't be used.
  ServiceVolumeConfigurationManagedEbsVolumeTagSpecification({
    this.propagateTags,
    required this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagateTags': ?propagateTags,
      'resourceType': resourceType,
      'tags': ?tags,
    };
  }

  factory ServiceVolumeConfigurationManagedEbsVolumeTagSpecification.fromMap(Map<String, dynamic> map) {
    return ServiceVolumeConfigurationManagedEbsVolumeTagSpecification(
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

