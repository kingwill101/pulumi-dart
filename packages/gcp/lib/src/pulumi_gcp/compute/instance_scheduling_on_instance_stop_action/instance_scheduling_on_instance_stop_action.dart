// ignore_for_file: unused_element, unnecessary_cast

class InstanceSchedulingOnInstanceStopAction {
  /// Whether to discard local SSDs attached to the VM while terminating using <span pulumi-lang-nodejs="`maxRunDuration`" pulumi-lang-dotnet="`MaxRunDuration`" pulumi-lang-go="`maxRunDuration`" pulumi-lang-python="`max_run_duration`" pulumi-lang-yaml="`maxRunDuration`" pulumi-lang-java="`maxRunDuration`">`max_run_duration`</span>. Only supports <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> at this point.
  final bool? discardLocalSsd;

  InstanceSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final discardLocalSsdValue = discardLocalSsd;
    if (discardLocalSsdValue != null) {
      map['discardLocalSsd'] = discardLocalSsdValue;
    }
    return map;
  }

  factory InstanceSchedulingOnInstanceStopAction.fromMap(
      Map<String, dynamic> map) {
    return InstanceSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null
          ? null
          : map['discardLocalSsd'] as bool,
    );
  }
}
