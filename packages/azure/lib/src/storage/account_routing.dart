// ignore_for_file: unused_element, unnecessary_cast


class AccountRouting {
  /// Specifies the kind of network routing opted by the user. Possible values are `InternetRouting` and `MicrosoftRouting`. Defaults to `MicrosoftRouting`.
  final String? choice;
  /// Should internet routing storage endpoints be published? Defaults to `false`.
  final bool? publishInternetEndpoints;
  /// Should Microsoft routing storage endpoints be published? Defaults to `false`.
  final bool? publishMicrosoftEndpoints;

  /// Creates a new [AccountRouting].
  /// [choice] Specifies the kind of network routing opted by the user. Possible values are `InternetRouting` and `MicrosoftRouting`. Defaults to `MicrosoftRouting`.
  /// [publishInternetEndpoints] Should internet routing storage endpoints be published? Defaults to `false`.
  /// [publishMicrosoftEndpoints] Should Microsoft routing storage endpoints be published? Defaults to `false`.
  AccountRouting({
    this.choice,
    this.publishInternetEndpoints,
    this.publishMicrosoftEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'choice': ?choice,
      'publishInternetEndpoints': ?publishInternetEndpoints,
      'publishMicrosoftEndpoints': ?publishMicrosoftEndpoints,
    };
  }

  factory AccountRouting.fromMap(Map<String, dynamic> map) {
    return AccountRouting(
      choice: map['choice'] == null ? null : map['choice'] as String,
      publishInternetEndpoints: map['publishInternetEndpoints'] == null ? null : map['publishInternetEndpoints'] as bool,
      publishMicrosoftEndpoints: map['publishMicrosoftEndpoints'] == null ? null : map['publishMicrosoftEndpoints'] as bool,
    );
  }
}

