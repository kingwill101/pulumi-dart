// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties_response.dart';
import 'location_policy_response2.dart';

/// A transient resource used in compute.instances.bulkInsert and compute.regionInstances.bulkInsert . This resource is not persisted anywhere, it is used only for processing the requests.
class BulkInsertInstanceResourceResponse {
  /// The maximum number of instances to create.
  final String count;

  /// The instance properties defining the VM instances to be created. Required if sourceInstanceTemplate is not provided.
  final InstancePropertiesResponse instanceProperties;

  /// Policy for chosing target zone. For more information, see Create VMs in bulk .
  final LocationPolicyResponse2 locationPolicy;

  /// The minimum number of instances to create. If no min_count is specified then count is used as the default value. If min_count instances cannot be created, then no instances will be created and instances already created will be deleted.
  final String minCount;

  /// The string pattern used for the names of the VMs. Either name_pattern or per_instance_properties must be set. The pattern must contain one continuous sequence of placeholder hash characters (#) with each character corresponding to one digit of the generated instance name. Example: a name_pattern of inst-#### generates instance names such as inst-0001 and inst-0002. If existing instances in the same project and zone have names that match the name pattern then the generated instance numbers start after the biggest existing number. For example, if there exists an instance with name inst-0050, then instance names generated using the pattern inst-#### begin with inst-0051. The name pattern placeholder #...# can contain up to 18 characters.
  final String namePattern;

  /// Per-instance properties to be set on individual instances. Keys of this map specify requested instance names. Can be empty if name_pattern is used.
  final Map<String, String> perInstanceProperties;

  /// Specifies the instance template from which to create instances. You may combine sourceInstanceTemplate with instanceProperties to override specific values from an existing instance template. Bulk API follows the semantics of JSON Merge Patch described by RFC 7396. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate This field is optional.
  final String sourceInstanceTemplate;

  BulkInsertInstanceResourceResponse({
    required this.count,
    required this.instanceProperties,
    required this.locationPolicy,
    required this.minCount,
    required this.namePattern,
    required this.perInstanceProperties,
    required this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['instanceProperties'] = instanceProperties.toMap();
    map['locationPolicy'] = locationPolicy.toMap();
    map['minCount'] = minCount;
    map['namePattern'] = namePattern;
    map['perInstanceProperties'] = perInstanceProperties;
    map['sourceInstanceTemplate'] = sourceInstanceTemplate;
    return map;
  }

  factory BulkInsertInstanceResourceResponse.fromMap(Map<String, dynamic> map) {
    return BulkInsertInstanceResourceResponse(
      count: map['count'] as String,
      instanceProperties: InstancePropertiesResponse.fromMap(
          (map['instanceProperties'] as Map).cast<String, dynamic>()),
      locationPolicy: LocationPolicyResponse2.fromMap(
          (map['locationPolicy'] as Map).cast<String, dynamic>()),
      minCount: map['minCount'] as String,
      namePattern: map['namePattern'] as String,
      perInstanceProperties:
          (map['perInstanceProperties'] as Map).cast<String, String>(),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
    );
  }
}
