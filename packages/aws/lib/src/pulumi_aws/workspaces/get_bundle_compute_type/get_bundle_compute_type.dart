// ignore_for_file: unused_element, unnecessary_cast

class GetBundleComputeType {
  /// Name of the bundle. You cannot combine this parameter with <span pulumi-lang-nodejs="`bundleId`" pulumi-lang-dotnet="`BundleId`" pulumi-lang-go="`bundleId`" pulumi-lang-python="`bundle_id`" pulumi-lang-yaml="`bundleId`" pulumi-lang-java="`bundleId`">`bundle_id`</span>.
  final String name;

  GetBundleComputeType({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetBundleComputeType.fromMap(Map<String, dynamic> map) {
    return GetBundleComputeType(
      name: map['name'] as String,
    );
  }
}
