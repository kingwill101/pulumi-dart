// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'twitter_registration_response.dart';

/// The configuration settings of the Twitter provider.
class TwitterResponse {
  /// &lt;code&gt;false&lt;/code&gt; if the Twitter provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the app registration for the Twitter provider.
  final pulumi.Input<TwitterRegistrationResponse>? registration;

  /// Creates a new [TwitterResponse].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Twitter provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [registration] The configuration settings of the app registration for the Twitter provider.
  const TwitterResponse({
    this.enabled,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'registration': ?pulumi.Input.mapOptionalInputValue<TwitterRegistrationResponse, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory TwitterResponse.fromMap(Map<String, dynamic> map) {
    return TwitterResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registration: (() { final guardedValue = map['registration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TwitterRegistrationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
