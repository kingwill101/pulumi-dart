// ignore_for_file: unused_element, unnecessary_cast

import 'widget_config_ui_branding_logo.dart';

class WidgetConfigUiBranding {
  /// Logo image.
  /// Structure is documented below.
  final WidgetConfigUiBrandingLogo? logo;

  /// Creates a new [WidgetConfigUiBranding].
  /// [logo] Logo image.
  WidgetConfigUiBranding({
    this.logo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logo': ?logo == null ? null : logo!.toMap(),
    };
  }

  factory WidgetConfigUiBranding.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiBranding(
      logo: map['logo'] == null ? null : WidgetConfigUiBrandingLogo.fromMap((map['logo'] as Map).cast<String, dynamic>()),
    );
  }
}

