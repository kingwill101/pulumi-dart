// ignore_for_file: unused_element, unnecessary_cast

/// A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications in https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications. A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values.
class ResourceManagerTagsResponse {
  /// TagKeyValue must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`
  final Map<String, String> tags;

  ResourceManagerTagsResponse({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tags'] = tags;
    return map;
  }

  factory ResourceManagerTagsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceManagerTagsResponse(
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
