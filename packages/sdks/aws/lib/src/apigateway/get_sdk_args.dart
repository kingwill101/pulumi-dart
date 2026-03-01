// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_sdk_get_sdk_args_doc}
/// Arguments for getSdk.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_sdk_get_sdk_args_doc}
class GetSdkArgs {
  /// Key-value map of query string parameters `sdk_type` properties of the SDK. For SDK Type of `objectivec` or `swift`, a parameter named `classPrefix` is required. For SDK Type of `android`, parameters named `groupId`, `artifactId`, `artifactVersion`, and `invokerPackage` are required. For SDK Type of `java`, parameters named `serviceName` and `javaPackageName` are required.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the associated REST API.
  final pulumi.Input<String> restApiId;
  /// Language for the generated SDK. Currently `java`, `javascript`, `android`, `objectivec` (for iOS), `swift` (for iOS), and `ruby` are supported.
  final pulumi.Input<String> sdkType;
  /// Name of the Stage that will be exported.
  final pulumi.Input<String> stageName;

  /// Creates a new [GetSdkArgs].
  /// [parameters] Key-value map of query string parameters `sdk_type` properties of the SDK. For SDK Type of `objectivec` or `swift`, a parameter named `classPrefix` is required. For SDK Type of `android`, parameters named `groupId`, `artifactId`, `artifactVersion`, and `invokerPackage` are required. For SDK Type of `java`, parameters named `serviceName` and `javaPackageName` are required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] Identifier of the associated REST API.
  /// [sdkType] Language for the generated SDK. Currently `java`, `javascript`, `android`, `objectivec` (for iOS), `swift` (for iOS), and `ruby` are supported.
  /// [stageName] Name of the Stage that will be exported.
  GetSdkArgs({
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    required pulumi.Output<String> restApiId,
    required pulumi.Output<String> sdkType,
    required pulumi.Output<String> stageName,
  }) :
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApiId = pulumi.Input.asInput<String>(restApiId),
      sdkType = pulumi.Input.asInput<String>(sdkType),
      stageName = pulumi.Input.asInput<String>(stageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'region': ?region,
      'restApiId': restApiId,
      'sdkType': sdkType,
      'stageName': stageName,
    };
  }

  factory GetSdkArgs.fromMap(Map<String, dynamic> map) {
    return GetSdkArgs(
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApiId: pulumi.Output.create<String>(map['restApiId'] as String),
      sdkType: pulumi.Output.create<String>(map['sdkType'] as String),
      stageName: pulumi.Output.create<String>(map['stageName'] as String),
    );
  }
}

