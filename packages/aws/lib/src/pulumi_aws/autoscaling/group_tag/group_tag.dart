// ignore_for_file: unused_element, unnecessary_cast

class GroupTag {
  /// Key
  final String key;

  /// Enables propagation of the tag to
  /// Amazon EC2 instances launched via this ASG
  ///
  /// To declare multiple tags, additional <span pulumi-lang-nodejs="`tag`" pulumi-lang-dotnet="`Tag`" pulumi-lang-go="`tag`" pulumi-lang-python="`tag`" pulumi-lang-yaml="`tag`" pulumi-lang-java="`tag`">`tag`</span> blocks can be specified.
  ///
  /// > **NOTE:** Other AWS APIs may automatically add special tags to their associated Auto Scaling Group for management purposes, such as ECS Capacity Providers adding the `AmazonECSManaged` tag. These generally should be included in the configuration so the provider does not attempt to remove them and so if the <span pulumi-lang-nodejs="`minSize`" pulumi-lang-dotnet="`MinSize`" pulumi-lang-go="`minSize`" pulumi-lang-python="`min_size`" pulumi-lang-yaml="`minSize`" pulumi-lang-java="`minSize`">`min_size`</span> was greater than zero on creation, that these tag(s) are applied to any initial EC2 Instances in the Auto Scaling Group. If these tag(s) were missing in the Auto Scaling Group configuration on creation, affected EC2 Instances missing the tags may require manual intervention of adding the tags to ensure they work properly with the other AWS service.
  final bool propagateAtLaunch;

  /// Value
  final String value;

  GroupTag({
    required this.key,
    required this.propagateAtLaunch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['propagateAtLaunch'] = propagateAtLaunch;
    map['value'] = value;
    return map;
  }

  factory GroupTag.fromMap(Map<String, dynamic> map) {
    return GroupTag(
      key: map['key'] as String,
      propagateAtLaunch: map['propagateAtLaunch'] as bool,
      value: map['value'] as String,
    );
  }
}
