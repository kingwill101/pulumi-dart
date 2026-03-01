// ignore_for_file: unused_element, unnecessary_cast

import 'widget_config_homepage_setting_shortcut_icon.dart';

class WidgetConfigHomepageSettingShortcut {
  /// Destination URL of shortcut.
  final String? destinationUri;

  /// Icon URL of shortcut.
  /// Structure is documented below.
  final WidgetConfigHomepageSettingShortcutIcon? icon;

  /// Title of the shortcut.
  final String? title;

  /// Creates a new [WidgetConfigHomepageSettingShortcut].
  /// [destinationUri] Destination URL of shortcut.
  /// [icon] Icon URL of shortcut.
  /// [title] Title of the shortcut.
  WidgetConfigHomepageSettingShortcut({
    this.destinationUri,
    this.icon,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationUri': ?destinationUri,
      'icon': ?icon == null ? null : icon!.toMap(),
      'title': ?title,
    };
  }

  factory WidgetConfigHomepageSettingShortcut.fromMap(
    Map<String, dynamic> map,
  ) {
    return WidgetConfigHomepageSettingShortcut(
      destinationUri: map['destinationUri'] == null
          ? null
          : map['destinationUri'] as String,
      icon: map['icon'] == null
          ? null
          : WidgetConfigHomepageSettingShortcutIcon.fromMap(
              (map['icon'] as Map).cast<String, dynamic>(),
            ),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
