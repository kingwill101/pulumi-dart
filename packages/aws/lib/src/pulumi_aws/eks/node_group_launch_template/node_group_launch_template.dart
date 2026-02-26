// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupLaunchTemplate {
  /// Identifier of the EC2 Launch Template. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final String? id;

  /// Name of the EC2 Launch Template. Conflicts with <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>.
  final String? name;

  /// EC2 Launch Template version number. While the API accepts values like `$Default` and `$Latest`, the API will convert the value to the associated version number (e.g., <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>) on read and the provider will show a difference on next plan. Using the <span pulumi-lang-nodejs="`defaultVersion`" pulumi-lang-dotnet="`DefaultVersion`" pulumi-lang-go="`defaultVersion`" pulumi-lang-python="`default_version`" pulumi-lang-yaml="`defaultVersion`" pulumi-lang-java="`defaultVersion`">`default_version`</span> or <span pulumi-lang-nodejs="`latestVersion`" pulumi-lang-dotnet="`LatestVersion`" pulumi-lang-go="`latestVersion`" pulumi-lang-python="`latest_version`" pulumi-lang-yaml="`latestVersion`" pulumi-lang-java="`latestVersion`">`latest_version`</span> attribute of the <span pulumi-lang-nodejs="`aws.ec2.LaunchTemplate`" pulumi-lang-dotnet="`aws.ec2.LaunchTemplate`" pulumi-lang-go="`ec2.LaunchTemplate`" pulumi-lang-python="`ec2.LaunchTemplate`" pulumi-lang-yaml="`aws.ec2.LaunchTemplate`" pulumi-lang-java="`aws.ec2.LaunchTemplate`">`aws.ec2.LaunchTemplate`</span> resource or data source is recommended for this argument.
  final String version;

  NodeGroupLaunchTemplate({
    this.id,
    this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['version'] = version;
    return map;
  }

  factory NodeGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return NodeGroupLaunchTemplate(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] as String,
    );
  }
}
