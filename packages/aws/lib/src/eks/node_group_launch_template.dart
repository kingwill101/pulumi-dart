// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupLaunchTemplate {
  /// Identifier of the EC2 Launch Template. Conflicts with `name`.
  final String? id;

  /// Name of the EC2 Launch Template. Conflicts with `id`.
  final String? name;

  /// EC2 Launch Template version number. While the API accepts values like `$Default` and `$Latest`, the API will convert the value to the associated version number (e.g., `1`) on read and the provider will show a difference on next plan. Using the `default_version` or `latest_version` attribute of the `aws.ec2.LaunchTemplate` resource or data source is recommended for this argument.
  final String version;

  /// Creates a new [NodeGroupLaunchTemplate].
  /// [id] Identifier of the EC2 Launch Template. Conflicts with `name`.
  /// [name] Name of the EC2 Launch Template. Conflicts with `id`.
  /// [version] EC2 Launch Template version number. While the API accepts values like `$Default` and `$Latest`, the API will convert the value to the associated version number (e.g., `1`) on read and the provider will show a difference on next plan. Using the `default_version` or `latest_version` attribute of the `aws.ec2.LaunchTemplate` resource or data source is recommended for this argument.
  NodeGroupLaunchTemplate({this.id, this.name, required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'name': ?name, 'version': version};
  }

  factory NodeGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return NodeGroupLaunchTemplate(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] as String,
    );
  }
}
