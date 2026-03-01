// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_homepage_setting_shortcut.dart';

class WidgetConfigHomepageSetting {
  /// The shortcuts to display on the homepage.
  /// Structure is documented below.
  final List<WidgetConfigHomepageSettingShortcut>? shortcuts;

  /// Creates a new [WidgetConfigHomepageSetting].
  /// [shortcuts] The shortcuts to display on the homepage.
  WidgetConfigHomepageSetting({this.shortcuts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shortcuts': ?shortcuts == null
          ? null
          : pulumi.Input.encodeList<
              WidgetConfigHomepageSettingShortcut,
              Map<String, dynamic>
            >(shortcuts!, (value) => value.toMap()),
    };
  }

  factory WidgetConfigHomepageSetting.fromMap(Map<String, dynamic> map) {
    return WidgetConfigHomepageSetting(
      shortcuts: map['shortcuts'] == null
          ? null
          : pulumi.Input.decodeList<WidgetConfigHomepageSettingShortcut>(
              map['shortcuts'],
              (value) => WidgetConfigHomepageSettingShortcut.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
