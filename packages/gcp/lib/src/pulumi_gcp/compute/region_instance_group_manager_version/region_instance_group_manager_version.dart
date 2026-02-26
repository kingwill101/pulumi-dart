// ignore_for_file: unused_element, unnecessary_cast

import '../region_instance_group_manager_version_target_size/region_instance_group_manager_version_target_size.dart';

class RegionInstanceGroupManagerVersion {
  /// The full URL to an instance template from which all new instances of this version will be created.
  final String instanceTemplate;

  /// Version name.
  final String? name;

  /// The number of instances calculated as a fixed number or a percentage depending on the settings. Structure is documented below.
  ///
  /// > Exactly one <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> you specify must not have a <span pulumi-lang-nodejs="`targetSize`" pulumi-lang-dotnet="`TargetSize`" pulumi-lang-go="`targetSize`" pulumi-lang-python="`target_size`" pulumi-lang-yaml="`targetSize`" pulumi-lang-java="`targetSize`">`target_size`</span> specified. During a rolling update, the instance group manager will fulfill the <span pulumi-lang-nodejs="`targetSize`" pulumi-lang-dotnet="`TargetSize`" pulumi-lang-go="`targetSize`" pulumi-lang-python="`target_size`" pulumi-lang-yaml="`targetSize`" pulumi-lang-java="`targetSize`">`target_size`</span>
  /// constraints of every other <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>, and any remaining instances will be provisioned with the version where <span pulumi-lang-nodejs="`targetSize`" pulumi-lang-dotnet="`TargetSize`" pulumi-lang-go="`targetSize`" pulumi-lang-python="`target_size`" pulumi-lang-yaml="`targetSize`" pulumi-lang-java="`targetSize`">`target_size`</span> is unset.
  final RegionInstanceGroupManagerVersionTargetSize? targetSize;

  RegionInstanceGroupManagerVersion({
    required this.instanceTemplate,
    this.name,
    this.targetSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final targetSizeValue = targetSize;
    if (targetSizeValue != null) {
      map['targetSize'] = targetSizeValue.toMap();
    }
    return map;
  }

  factory RegionInstanceGroupManagerVersion.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerVersion(
      instanceTemplate: map['instanceTemplate'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      targetSize: map['targetSize'] == null
          ? null
          : RegionInstanceGroupManagerVersionTargetSize.fromMap(
              (map['targetSize'] as Map).cast<String, dynamic>()),
    );
  }
}
