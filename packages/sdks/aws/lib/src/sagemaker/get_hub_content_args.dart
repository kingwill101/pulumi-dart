// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_get_hub_content_get_hub_content_args_doc}
/// Arguments for getHubContent.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_get_hub_content_get_hub_content_args_doc}
class GetHubContentArgs {
  /// Name of the hub content.
  final pulumi.Input<String> hubContentName;
  /// Type of the hub content. Valid values: `Model`, `Notebook`, `ModelReference`, `DataSet`, `JsonDoc`.
  final pulumi.Input<String> hubContentType;
  /// Version of the hub content. Defaults to the latest version.
  final pulumi.Input<String?>? hubContentVersion;
  /// Name of the hub that contains the content.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> hubName;
  /// Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetHubContentArgs].
  /// [hubContentName] Name of the hub content.
  /// [hubContentType] Type of the hub content. Valid values: `Model`, `Notebook`, `ModelReference`, `DataSet`, `JsonDoc`.
  /// [hubContentVersion] Version of the hub content. Defaults to the latest version.
  /// [hubName] Name of the hub that contains the content.
  /// [region] Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetHubContentArgs({
    required this.hubContentName,
    required this.hubContentType,
    this.hubContentVersion,
    required this.hubName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubContentName': hubContentName,
      'hubContentType': hubContentType,
      'hubContentVersion': ?hubContentVersion,
      'hubName': hubName,
      'region': ?region,
    };
  }

  factory GetHubContentArgs.fromMap(Map<String, dynamic> map) {
    return GetHubContentArgs(
      hubContentName: pulumi.Input.fromValue(map['hubContentName'] as String),
      hubContentType: pulumi.Input.fromValue(map['hubContentType'] as String),
      hubContentVersion: (() { final guardedValue = map['hubContentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
