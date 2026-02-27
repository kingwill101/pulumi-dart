// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties.dart';
import 'location_policy_compute_alpha.dart';

/// A transient resource used in compute.instances.bulkInsert and compute.regionInstances.bulkInsert . This resource is not persisted anywhere, it is used only for processing the requests.
class BulkInsertInstanceResource {
  /// The maximum number of instances to create.
  final String? count;

  /// The instance properties defining the VM instances to be created. Required if sourceInstanceTemplate is not provided.
  final InstanceProperties? instanceProperties;

  /// Policy for chosing target zone. For more information, see Create VMs in bulk .
  final LocationPolicyComputeAlpha? locationPolicy;

  /// The minimum number of instances to create. If no min_count is specified then count is used as the default value. If min_count instances cannot be created, then no instances will be created and instances already created will be deleted.
  final String? minCount;

  /// The string pattern used for the names of the VMs. Either name_pattern or per_instance_properties must be set. The pattern must contain one continuous sequence of placeholder hash characters (#) with each character corresponding to one digit of the generated instance name. Example: a name_pattern of inst-#### generates instance names such as inst-0001 and inst-0002. If existing instances in the same project and zone have names that match the name pattern then the generated instance numbers start after the biggest existing number. For example, if there exists an instance with name inst-0050, then instance names generated using the pattern inst-#### begin with inst-0051. The name pattern placeholder #...# can contain up to 18 characters.
  final String? namePattern;

  /// Per-instance properties to be set on individual instances. Keys of this map specify requested instance names. Can be empty if name_pattern is used.
  final Map<String, String>? perInstanceProperties;

  /// Specifies the instance template from which to create instances. You may combine sourceInstanceTemplate with instanceProperties to override specific values from an existing instance template. Bulk API follows the semantics of JSON Merge Patch described by RFC 7396. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate This field is optional.
  final String? sourceInstanceTemplate;

  BulkInsertInstanceResource({
    this.count,
    this.instanceProperties,
    this.locationPolicy,
    this.minCount,
    this.namePattern,
    this.perInstanceProperties,
    this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final instancePropertiesValue = instanceProperties;
    if (instancePropertiesValue != null) {
      map['instanceProperties'] = instancePropertiesValue.toMap();
    }
    final locationPolicyValue = locationPolicy;
    if (locationPolicyValue != null) {
      map['locationPolicy'] = locationPolicyValue.toMap();
    }
    final minCountValue = minCount;
    if (minCountValue != null) {
      map['minCount'] = minCountValue;
    }
    final namePatternValue = namePattern;
    if (namePatternValue != null) {
      map['namePattern'] = namePatternValue;
    }
    final perInstancePropertiesValue = perInstanceProperties;
    if (perInstancePropertiesValue != null) {
      map['perInstanceProperties'] = perInstancePropertiesValue;
    }
    final sourceInstanceTemplateValue = sourceInstanceTemplate;
    if (sourceInstanceTemplateValue != null) {
      map['sourceInstanceTemplate'] = sourceInstanceTemplateValue;
    }
    return map;
  }

  factory BulkInsertInstanceResource.fromMap(Map<String, dynamic> map) {
    return BulkInsertInstanceResource(
      count: map['count'] == null ? null : map['count'] as String,
      instanceProperties: map['instanceProperties'] == null
          ? null
          : InstanceProperties.fromMap(
              (map['instanceProperties'] as Map).cast<String, dynamic>()),
      locationPolicy: map['locationPolicy'] == null
          ? null
          : LocationPolicyComputeAlpha.fromMap(
              (map['locationPolicy'] as Map).cast<String, dynamic>()),
      minCount: map['minCount'] == null ? null : map['minCount'] as String,
      namePattern:
          map['namePattern'] == null ? null : map['namePattern'] as String,
      perInstanceProperties: map['perInstanceProperties'] == null
          ? null
          : (map['perInstanceProperties'] as Map).cast<String, String>(),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null
          ? null
          : map['sourceInstanceTemplate'] as String,
    );
  }
}
