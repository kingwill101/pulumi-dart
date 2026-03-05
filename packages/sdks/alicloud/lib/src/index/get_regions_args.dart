// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_index_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// Set to true to match only the region configured in the provider.
  final pulumi.Input<bool>? current;
  /// The name of the region to select, such as `eu-central-1`.
  final pulumi.Input<String>? name;
  /// File name where to save data source results (after running `pulumi preview`).
  ///
  /// &gt; **NOTE:** You will get an error if you set `current` to true and `name` to a different value from the one you configured in the provider.
  /// It is better to either use `name` or `current`, but not both at the same time.
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRegionsArgs].
  /// [current] Set to true to match only the region configured in the provider.
  /// [name] The name of the region to select, such as `eu-central-1`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRegionsArgs({
    this.current,
    this.name,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current,
      'name': ?name,
      'outputFile': ?outputFile,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      current: (() { final guardedValue = map['current']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

