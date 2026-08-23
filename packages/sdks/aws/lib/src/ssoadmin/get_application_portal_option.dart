// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_portal_option_sign_in_option.dart';

class GetApplicationPortalOption {
  /// Sign-in options for the access portal. See `signInOptions` Block below.
  final pulumi.Input<List<GetApplicationPortalOptionSignInOption>> signInOptions;
  /// Whether the application is visible in the access portal.
  final pulumi.Input<String> visibility;

  /// Creates a new [GetApplicationPortalOption].
  /// [signInOptions] Sign-in options for the access portal. See `signInOptions` Block below.
  /// [visibility] Whether the application is visible in the access portal.
  const GetApplicationPortalOption({
    required this.signInOptions,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signInOptions': pulumi.Input.mapInputValue<List<GetApplicationPortalOptionSignInOption>, List<Map<String, dynamic>>>(signInOptions, (value) => pulumi.Input.encodeList<GetApplicationPortalOptionSignInOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'visibility': visibility,
    };
  }

  factory GetApplicationPortalOption.fromMap(Map<String, dynamic> map) {
    return GetApplicationPortalOption(
      signInOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationPortalOptionSignInOption>(map['signInOptions']!, (value) => GetApplicationPortalOptionSignInOption.fromMap((value as Map).cast<String, dynamic>()))),
      visibility: pulumi.Input.fromValue(map['visibility'] as String),
    );
  }
}
