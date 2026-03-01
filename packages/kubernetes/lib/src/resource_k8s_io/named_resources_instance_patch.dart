// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_attribute_patch.dart';

/// NamedResourcesInstance represents one individual hardware instance that can be selected based on its attributes.
class NamedResourcesInstancePatch {
  /// Attributes defines the attributes of this resource instance. The name of each attribute must be unique.
  final List<NamedResourcesAttributePatch>? attributes;
  /// Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  final String? name;

  /// Creates a new [NamedResourcesInstancePatch].
  /// [attributes] Attributes defines the attributes of this resource instance. The name of each attribute must be unique.
  /// [name] Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  NamedResourcesInstancePatch({
    this.attributes,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes == null ? null : pulumi.Input.encodeList<NamedResourcesAttributePatch, Map<String, dynamic>>(attributes!, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory NamedResourcesInstancePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesInstancePatch(
      attributes: map['attributes'] == null ? null : pulumi.Input.decodeList<NamedResourcesAttributePatch>(map['attributes'], (value) => NamedResourcesAttributePatch.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

