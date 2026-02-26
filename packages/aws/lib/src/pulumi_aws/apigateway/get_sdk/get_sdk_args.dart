// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSdk.
class GetSdkArgs {
  /// Key-value map of query string parameters <span pulumi-lang-nodejs="`sdkType`" pulumi-lang-dotnet="`SdkType`" pulumi-lang-go="`sdkType`" pulumi-lang-python="`sdk_type`" pulumi-lang-yaml="`sdkType`" pulumi-lang-java="`sdkType`">`sdk_type`</span> properties of the SDK. For SDK Type of <span pulumi-lang-nodejs="`objectivec`" pulumi-lang-dotnet="`Objectivec`" pulumi-lang-go="`objectivec`" pulumi-lang-python="`objectivec`" pulumi-lang-yaml="`objectivec`" pulumi-lang-java="`objectivec`">`objectivec`</span> or <span pulumi-lang-nodejs="`swift`" pulumi-lang-dotnet="`Swift`" pulumi-lang-go="`swift`" pulumi-lang-python="`swift`" pulumi-lang-yaml="`swift`" pulumi-lang-java="`swift`">`swift`</span>, a parameter named `classPrefix` is required. For SDK Type of <span pulumi-lang-nodejs="`android`" pulumi-lang-dotnet="`Android`" pulumi-lang-go="`android`" pulumi-lang-python="`android`" pulumi-lang-yaml="`android`" pulumi-lang-java="`android`">`android`</span>, parameters named `groupId`, `artifactId`, `artifactVersion`, and `invokerPackage` are required. For SDK Type of <span pulumi-lang-nodejs="`java`" pulumi-lang-dotnet="`Java`" pulumi-lang-go="`java`" pulumi-lang-python="`java`" pulumi-lang-yaml="`java`" pulumi-lang-java="`java`">`java`</span>, parameters named `serviceName` and `javaPackageName` are required.
  final Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the associated REST API.
  final Input<String> restApiId;

  /// Language for the generated SDK. Currently <span pulumi-lang-nodejs="`java`" pulumi-lang-dotnet="`Java`" pulumi-lang-go="`java`" pulumi-lang-python="`java`" pulumi-lang-yaml="`java`" pulumi-lang-java="`java`">`java`</span>, <span pulumi-lang-nodejs="`javascript`" pulumi-lang-dotnet="`Javascript`" pulumi-lang-go="`javascript`" pulumi-lang-python="`javascript`" pulumi-lang-yaml="`javascript`" pulumi-lang-java="`javascript`">`javascript`</span>, <span pulumi-lang-nodejs="`android`" pulumi-lang-dotnet="`Android`" pulumi-lang-go="`android`" pulumi-lang-python="`android`" pulumi-lang-yaml="`android`" pulumi-lang-java="`android`">`android`</span>, <span pulumi-lang-nodejs="`objectivec`" pulumi-lang-dotnet="`Objectivec`" pulumi-lang-go="`objectivec`" pulumi-lang-python="`objectivec`" pulumi-lang-yaml="`objectivec`" pulumi-lang-java="`objectivec`">`objectivec`</span> (for iOS), <span pulumi-lang-nodejs="`swift`" pulumi-lang-dotnet="`Swift`" pulumi-lang-go="`swift`" pulumi-lang-python="`swift`" pulumi-lang-yaml="`swift`" pulumi-lang-java="`swift`">`swift`</span> (for iOS), and <span pulumi-lang-nodejs="`ruby`" pulumi-lang-dotnet="`Ruby`" pulumi-lang-go="`ruby`" pulumi-lang-python="`ruby`" pulumi-lang-yaml="`ruby`" pulumi-lang-java="`ruby`">`ruby`</span> are supported.
  final Input<String> sdkType;

  /// Name of the Stage that will be exported.
  final Input<String> stageName;

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
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
      sdkType: Input.asInput<String>(map['sdkType']),
      stageName: Input.asInput<String>(map['stageName']),
    );
  }
}
