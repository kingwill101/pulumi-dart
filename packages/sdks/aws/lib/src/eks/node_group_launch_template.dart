// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupLaunchTemplate {
  /// Identifier of the EC2 Launch Template. Conflicts with `name`.
  final pulumi.Input<String>? id;
  /// Name of the EC2 Launch Template. Conflicts with `id`.
  final pulumi.Input<String>? name;
  /// EC2 Launch Template version number. While the API accepts values like `$Default` and `$Latest`, the API will convert the value to the associated version number (e.g., `1`) on read and the provider will show a difference on next plan. Using the `defaultVersion` or `latestVersion` attribute of the `aws.ec2.LaunchTemplate` resource or data source is recommended for this argument.
  final pulumi.Input<String> version;

  /// Creates a new [NodeGroupLaunchTemplate].
  /// [id] Identifier of the EC2 Launch Template. Conflicts with `name`.
  /// [name] Name of the EC2 Launch Template. Conflicts with `id`.
  /// [version] EC2 Launch Template version number. While the API accepts values like `$Default` and `$Latest`, the API will convert the value to the associated version number (e.g., `1`) on read and the provider will show a difference on next plan. Using the `defaultVersion` or `latestVersion` attribute of the `aws.ec2.LaunchTemplate` resource or data source is recommended for this argument.
  const NodeGroupLaunchTemplate({
    this.id,
    this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'version': version,
    };
  }

  factory NodeGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return NodeGroupLaunchTemplate(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
