// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceState.
class InstanceStateArgs {
  /// Whether to request a forced stop when <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> is <span pulumi-lang-nodejs="`stopped`" pulumi-lang-dotnet="`Stopped`" pulumi-lang-go="`stopped`" pulumi-lang-python="`stopped`" pulumi-lang-yaml="`stopped`" pulumi-lang-java="`stopped`">`stopped`</span>. Otherwise (_i.e._, <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> is <span pulumi-lang-nodejs="`running`" pulumi-lang-dotnet="`Running`" pulumi-lang-go="`running`" pulumi-lang-python="`running`" pulumi-lang-yaml="`running`" pulumi-lang-java="`running`">`running`</span>), ignored. When an instance is forced to stop, it does not flush file system caches or file system metadata, and you must subsequently perform file system check and repair. Not recommended for Windows instances. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? force;

  /// ID of the instance.
  final Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// State of the instance. Valid values are <span pulumi-lang-nodejs="`stopped`" pulumi-lang-dotnet="`Stopped`" pulumi-lang-go="`stopped`" pulumi-lang-python="`stopped`" pulumi-lang-yaml="`stopped`" pulumi-lang-java="`stopped`">`stopped`</span>, <span pulumi-lang-nodejs="`running`" pulumi-lang-dotnet="`Running`" pulumi-lang-go="`running`" pulumi-lang-python="`running`" pulumi-lang-yaml="`running`" pulumi-lang-java="`running`">`running`</span>.
  ///
  /// The following arguments are optional:
  final Input<String> state;

  InstanceStateArgs({
    this.force,
    required this.instanceId,
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    return map;
  }

  factory InstanceStateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceStateArgs(
      force: Input.asOptionalInput<bool>(map['force']),
      instanceId: Input.asInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asInput<String>(map['state']),
    );
  }
}
