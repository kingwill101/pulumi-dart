// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_profile_url_filtering_profile_url_filter/security_profile_url_filtering_profile_url_filter.dart';

class SecurityProfileUrlFilteringProfile {
  /// The configuration for action to take based on domain name match.
  /// A domain name would be checked for matching filters through the list in order of highest to lowest priority,
  /// and the first filter that a domain name matches with is the one whose actions gets applied.
  /// Structure is documented below.
  final List<SecurityProfileUrlFilteringProfileUrlFilter>? urlFilters;

  SecurityProfileUrlFilteringProfile({
    this.urlFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final urlFiltersValue = urlFilters;
    if (urlFiltersValue != null) {
      map['urlFilters'] = pulumi.Input.encodeList<
          SecurityProfileUrlFilteringProfileUrlFilter,
          Map<String, dynamic>>(urlFiltersValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityProfileUrlFilteringProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfileUrlFilteringProfile(
      urlFilters: map['urlFilters'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityProfileUrlFilteringProfileUrlFilter>(
              map['urlFilters'],
              (value) => SecurityProfileUrlFilteringProfileUrlFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
