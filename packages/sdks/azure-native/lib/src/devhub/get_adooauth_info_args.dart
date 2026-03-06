// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devhub_get_adooauth_info_args_doc}
/// Arguments for getADOOAuthInfo.
/// {@endtemplate}
/// {@macro pulumi_devhub_get_adooauth_info_args_doc}
class GetADOOAuthInfoArgs {
  /// The name of the Azure region.
  final pulumi.Input<String> location;
  /// The URL the client will redirect to on successful authentication. If empty, no redirect will occur.
  final pulumi.Input<String>? redirectUrl;

  /// Creates a new [GetADOOAuthInfoArgs].
  /// [location] The name of the Azure region.
  /// [redirectUrl] The URL the client will redirect to on successful authentication. If empty, no redirect will occur.
  const GetADOOAuthInfoArgs({
    required this.location,
    this.redirectUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'redirectUrl': ?redirectUrl,
    };
  }

  factory GetADOOAuthInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetADOOAuthInfoArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

