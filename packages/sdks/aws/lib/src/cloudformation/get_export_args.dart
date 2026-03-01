// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudformation_get_export_get_export_args_doc}
/// Arguments for getExport.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_get_export_get_export_args_doc}
class GetExportArgs {
  /// Name of the export as it appears in the console or from [list-exports](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/list-exports.html)
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetExportArgs].
  /// [name] Name of the export as it appears in the console or from [list-exports](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/list-exports.html)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetExportArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

