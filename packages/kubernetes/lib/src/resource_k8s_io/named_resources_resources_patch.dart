// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_instance_patch.dart';

/// NamedResourcesResources is used in ResourceModel.
class NamedResourcesResourcesPatch {
  /// The list of all individual resources instances currently available.
  final List<NamedResourcesInstancePatch>? instances;

  /// Creates a new [NamedResourcesResourcesPatch].
  /// [instances] The list of all individual resources instances currently available.
  NamedResourcesResourcesPatch({
    this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': ?instances == null ? null : pulumi.Input.encodeList<NamedResourcesInstancePatch, Map<String, dynamic>>(instances!, (value) => value.toMap()),
    };
  }

  factory NamedResourcesResourcesPatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesResourcesPatch(
      instances: map['instances'] == null ? null : pulumi.Input.decodeList<NamedResourcesInstancePatch>(map['instances'], (value) => NamedResourcesInstancePatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

