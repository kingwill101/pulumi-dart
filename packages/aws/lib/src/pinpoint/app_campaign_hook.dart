// ignore_for_file: unused_element, unnecessary_cast

class AppCampaignHook {
  /// Lambda function name or ARN to be called for delivery. Conflicts with `web_url`
  final String? lambdaFunctionName;

  /// What mode Lambda should be invoked in. Valid values for this parameter are `DELIVERY`, `FILTER`.
  final String? mode;

  /// Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request. Conflicts with `lambda_function_name`
  final String? webUrl;

  /// Creates a new [AppCampaignHook].
  /// [lambdaFunctionName] Lambda function name or ARN to be called for delivery. Conflicts with `web_url`
  /// [mode] What mode Lambda should be invoked in. Valid values for this parameter are `DELIVERY`, `FILTER`.
  /// [webUrl] Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request. Conflicts with `lambda_function_name`
  AppCampaignHook({this.lambdaFunctionName, this.mode, this.webUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaFunctionName': ?lambdaFunctionName,
      'mode': ?mode,
      'webUrl': ?webUrl,
    };
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
