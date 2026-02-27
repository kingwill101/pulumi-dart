// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSdk.
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

  GetSdkArgs({
    this.parameters,
    this.region,
    required this.restApiId,
    required this.sdkType,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    map['sdkType'] = sdkType;
    map['stageName'] = stageName;
    return map;
  }

  factory GetSdkArgs.fromMap(Map<String, dynamic> map) {
    return GetSdkArgs(
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApiId: pulumi.Input.asInput<String>(map['restApiId']),
      sdkType: pulumi.Input.asInput<String>(map['sdkType']),
      stageName: pulumi.Input.asInput<String>(map['stageName']),
    );
  }
}
