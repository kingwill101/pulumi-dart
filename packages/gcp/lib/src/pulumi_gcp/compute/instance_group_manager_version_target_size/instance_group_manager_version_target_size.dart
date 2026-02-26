// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerVersionTargetSize {
  /// , The number of instances which are managed for this version. Conflicts with <span pulumi-lang-nodejs="`percent`" pulumi-lang-dotnet="`Percent`" pulumi-lang-go="`percent`" pulumi-lang-python="`percent`" pulumi-lang-yaml="`percent`" pulumi-lang-java="`percent`">`percent`</span>.
  final int? fixed;

  /// , The number of instances (calculated as percentage) which are managed for this version. Conflicts with <span pulumi-lang-nodejs="`fixed`" pulumi-lang-dotnet="`Fixed`" pulumi-lang-go="`fixed`" pulumi-lang-python="`fixed`" pulumi-lang-yaml="`fixed`" pulumi-lang-java="`fixed`">`fixed`</span>.
  /// Note that when using <span pulumi-lang-nodejs="`percent`" pulumi-lang-dotnet="`Percent`" pulumi-lang-go="`percent`" pulumi-lang-python="`percent`" pulumi-lang-yaml="`percent`" pulumi-lang-java="`percent`">`percent`</span>, rounding will be in favor of explicitly set <span pulumi-lang-nodejs="`targetSize`" pulumi-lang-dotnet="`TargetSize`" pulumi-lang-go="`targetSize`" pulumi-lang-python="`target_size`" pulumi-lang-yaml="`targetSize`" pulumi-lang-java="`targetSize`">`target_size`</span> values; a managed instance group with 2 instances and 2 <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>s,
  /// one of which has a `target_size.percent` of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> will create 2 instances of that <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>.
  final int? percent;

  InstanceGroupManagerVersionTargetSize({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedValue = fixed;
    if (fixedValue != null) {
      map['fixed'] = fixedValue;
    }
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    return map;
  }

  factory InstanceGroupManagerVersionTargetSize.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerVersionTargetSize(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}
