// ignore_for_file: unused_element, unnecessary_cast

class AppCampaignHook {
  /// Lambda function name or ARN to be called for delivery. Conflicts with <span pulumi-lang-nodejs="`webUrl`" pulumi-lang-dotnet="`WebUrl`" pulumi-lang-go="`webUrl`" pulumi-lang-python="`web_url`" pulumi-lang-yaml="`webUrl`" pulumi-lang-java="`webUrl`">`web_url`</span>
  final String? lambdaFunctionName;

  /// What mode Lambda should be invoked in. Valid values for this parameter are `DELIVERY`, `FILTER`.
  final String? mode;

  /// Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request. Conflicts with <span pulumi-lang-nodejs="`lambdaFunctionName`" pulumi-lang-dotnet="`LambdaFunctionName`" pulumi-lang-go="`lambdaFunctionName`" pulumi-lang-python="`lambda_function_name`" pulumi-lang-yaml="`lambdaFunctionName`" pulumi-lang-java="`lambdaFunctionName`">`lambda_function_name`</span>
  final String? webUrl;

  AppCampaignHook({
    this.lambdaFunctionName,
    this.mode,
    this.webUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lambdaFunctionNameValue = lambdaFunctionName;
    if (lambdaFunctionNameValue != null) {
      map['lambdaFunctionName'] = lambdaFunctionNameValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final webUrlValue = webUrl;
    if (webUrlValue != null) {
      map['webUrl'] = webUrlValue;
    }
    return map;
  }

  factory AppCampaignHook.fromMap(Map<String, dynamic> map) {
    return AppCampaignHook(
      lambdaFunctionName: map['lambdaFunctionName'] == null
          ? null
          : map['lambdaFunctionName'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      webUrl: map['webUrl'] == null ? null : map['webUrl'] as String,
    );
  }
}
