// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'floorsetting_filter_config_rai_settings_rai_filter.dart';

class FloorsettingFilterConfigRaiSettings {
  /// List of Responsible AI filters enabled for template.
  /// Structure is documented below.
  final List<FloorsettingFilterConfigRaiSettingsRaiFilter> raiFilters;

  /// Creates a new [FloorsettingFilterConfigRaiSettings].
  /// [raiFilters] List of Responsible AI filters enabled for template.
  FloorsettingFilterConfigRaiSettings({required this.raiFilters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'raiFilters':
          pulumi.Input.encodeList<
            FloorsettingFilterConfigRaiSettingsRaiFilter,
            Map<String, dynamic>
          >(raiFilters, (value) => value.toMap()),
    };
  }

  factory FloorsettingFilterConfigRaiSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return FloorsettingFilterConfigRaiSettings(
      raiFilters:
          pulumi.Input.decodeList<FloorsettingFilterConfigRaiSettingsRaiFilter>(
            map['raiFilters'],
            (value) => FloorsettingFilterConfigRaiSettingsRaiFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
