// ignore_for_file: unused_element, unnecessary_cast

import 'twitter_registration.dart';

/// The configuration settings of the Twitter provider.
class Twitter {
  /// <code>false</code> if the Twitter provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// The configuration settings of the app registration for the Twitter provider.
  final TwitterRegistration? registration;

  /// Creates a new [Twitter].
  /// [enabled] <code>false</code> if the Twitter provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [registration] The configuration settings of the app registration for the Twitter provider.
  Twitter({
    this.enabled,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'registration': ?registration == null ? null : registration!.toMap(),
    };
  }

  factory Twitter.fromMap(Map<String, dynamic> map) {
    return Twitter(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      registration: map['registration'] == null ? null : TwitterRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

