// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'by_products.dart';
import 'environment2.dart';
import 'grafeas_v1beta1_intoto_artifact.dart';

/// This corresponds to an in-toto link.
class Link {
  /// ByProducts are data generated as part of a software supply chain step, but are not the actual result of the step.
  final ByProducts? byproducts;

  /// This field contains the full command executed for the step. This can also be empty if links are generated for operations that aren't directly mapped to a specific command. Each term in the command is an independent string in the list. An example of a command in the in-toto metadata field is: "command": ["git", "clone", "https://github.com/in-toto/demo-project.git"]
  final List<String>? command;

  /// This is a field that can be used to capture information about the environment. It is suggested for this field to contain information that details environment variables, filesystem information, and the present working directory. The recommended structure of this field is: "environment": { "custom_values": { "variables": "", "filesystem": "", "workdir": "", "": "..." } }
  final Environment2? environment;

  /// Materials are the supply chain artifacts that go into the step and are used for the operation performed. The key of the map is the path of the artifact and the structure contains the recorded hash information. An example is: "materials": [ { "resource_uri": "foo/bar", "hashes": { "sha256": "ebebf...", : } } ]
  final List<GrafeasV1beta1IntotoArtifact>? materials;

  /// Products are the supply chain artifacts generated as a result of the step. The structure is identical to that of materials.
  final List<GrafeasV1beta1IntotoArtifact>? products;

  Link({
    this.byproducts,
    this.command,
    this.environment,
    this.materials,
    this.products,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final byproductsValue = byproducts;
    if (byproductsValue != null) {
      map['byproducts'] = byproductsValue.toMap();
    }
    final commandValue = command;
    if (commandValue != null) {
      map['command'] = commandValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue.toMap();
    }
    final materialsValue = materials;
    if (materialsValue != null) {
      map['materials'] =
          Input.encodeList<GrafeasV1beta1IntotoArtifact, Map<String, dynamic>>(
              materialsValue, (value) => value.toMap());
    }
    final productsValue = products;
    if (productsValue != null) {
      map['products'] =
          Input.encodeList<GrafeasV1beta1IntotoArtifact, Map<String, dynamic>>(
              productsValue, (value) => value.toMap());
    }
    return map;
  }

  factory Link.fromMap(Map<String, dynamic> map) {
    return Link(
      byproducts: map['byproducts'] == null
          ? null
          : ByProducts.fromMap(
              (map['byproducts'] as Map).cast<String, dynamic>()),
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
      environment: map['environment'] == null
          ? null
          : Environment2.fromMap(
              (map['environment'] as Map).cast<String, dynamic>()),
      materials: map['materials'] == null
          ? null
          : Input.decodeList<GrafeasV1beta1IntotoArtifact>(
              map['materials'],
              (value) => GrafeasV1beta1IntotoArtifact.fromMap(
                  (value as Map).cast<String, dynamic>())),
      products: map['products'] == null
          ? null
          : Input.decodeList<GrafeasV1beta1IntotoArtifact>(
              map['products'],
              (value) => GrafeasV1beta1IntotoArtifact.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
