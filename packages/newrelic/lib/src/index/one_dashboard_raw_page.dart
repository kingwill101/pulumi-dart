// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_raw_page_widget.dart';

class OneDashboardRawPage {
  /// Brief text describing the dashboard.
  final String? description;
  /// The unique entity identifier of the dashboard page in New Relic.
  final String? guid;
  /// The title of the dashboard.
  final String name;
  /// (Optional) A nested block that describes a widget. See Nested widget blocks below for details.
  final List<OneDashboardRawPageWidget>? widgets;

  /// Creates a new [OneDashboardRawPage].
  /// [description] Brief text describing the dashboard.
  /// [guid] The unique entity identifier of the dashboard page in New Relic.
  /// [name] The title of the dashboard.
  /// [widgets] (Optional) A nested block that describes a widget. See Nested widget blocks below for details.
  OneDashboardRawPage({
    this.description,
    this.guid,
    required this.name,
    this.widgets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guid': ?guid,
      'name': name,
      'widgets': ?widgets == null ? null : pulumi.Input.encodeList<OneDashboardRawPageWidget, Map<String, dynamic>>(widgets!, (value) => value.toMap()),
    };
  }

  factory OneDashboardRawPage.fromMap(Map<String, dynamic> map) {
    return OneDashboardRawPage(
      description: map['description'] == null ? null : map['description'] as String,
      guid: map['guid'] == null ? null : map['guid'] as String,
      name: map['name'] as String,
      widgets: map['widgets'] == null ? null : pulumi.Input.decodeList<OneDashboardRawPageWidget>(map['widgets'], (value) => OneDashboardRawPageWidget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

