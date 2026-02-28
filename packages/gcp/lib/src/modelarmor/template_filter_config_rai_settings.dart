// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_rai_settings_rai_filter.dart';

class TemplateFilterConfigRaiSettings {
  /// List of Responsible AI filters enabled for template.
  /// Structure is documented below.
  final List<TemplateFilterConfigRaiSettingsRaiFilter> raiFilters;

  /// Creates a new [TemplateFilterConfigRaiSettings].
  /// [raiFilters] List of Responsible AI filters enabled for template.
  TemplateFilterConfigRaiSettings({
    required this.raiFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['raiFilters'] = pulumi.Input.encodeList<
        TemplateFilterConfigRaiSettingsRaiFilter,
        Map<String, dynamic>>(raiFilters, (value) => value.toMap());
    return map;
  }

  factory TemplateFilterConfigRaiSettings.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigRaiSettings(
      raiFilters:
          pulumi.Input.decodeList<TemplateFilterConfigRaiSettingsRaiFilter>(
              map['raiFilters'],
              (value) => TemplateFilterConfigRaiSettingsRaiFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
