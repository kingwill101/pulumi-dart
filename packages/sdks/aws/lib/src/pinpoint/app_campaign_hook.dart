// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppCampaignHook {
  /// Lambda function name or ARN to be called for delivery. Conflicts with `webUrl`.
  final pulumi.Input<String?>? lambdaFunctionName;
  /// What mode Lambda should be invoked in. Valid values for this parameter are `DELIVERY`, `FILTER`.
  final pulumi.Input<String?>? mode;
  /// Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request. Conflicts with `lambdaFunctionName`.
  final pulumi.Input<String?>? webUrl;

  /// Creates a new [AppCampaignHook].
  /// [lambdaFunctionName] Lambda function name or ARN to be called for delivery. Conflicts with `webUrl`.
  /// [mode] What mode Lambda should be invoked in. Valid values for this parameter are `DELIVERY`, `FILTER`.
  /// [webUrl] Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request. Conflicts with `lambdaFunctionName`.
  const AppCampaignHook({
    this.lambdaFunctionName,
    this.mode,
    this.webUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaFunctionName': ?lambdaFunctionName,
      'mode': ?mode,
      'webUrl': ?webUrl,
    };
  }

  factory AppCampaignHook.fromMap(Map<String, dynamic> map) {
    return AppCampaignHook(
      lambdaFunctionName: (() { final guardedValue = map['lambdaFunctionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webUrl: (() { final guardedValue = map['webUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
