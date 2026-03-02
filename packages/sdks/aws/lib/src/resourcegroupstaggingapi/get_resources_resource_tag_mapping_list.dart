// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_resource_tag_mapping_list_compliance_detail.dart';

class GetResourcesResourceTagMappingList {
  /// List of objects with information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.
  final pulumi.Input<List<GetResourcesResourceTagMappingListComplianceDetail>> complianceDetails;
  /// ARN of the resource.
  final pulumi.Input<String> resourceArn;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetResourcesResourceTagMappingList].
  /// [complianceDetails] List of objects with information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.
  /// [resourceArn] ARN of the resource.
  /// [tags] Map of tags assigned to the resource.
  GetResourcesResourceTagMappingList({
    required this.complianceDetails,
    required this.resourceArn,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceDetails': pulumi.Input.mapInputValue<List<GetResourcesResourceTagMappingListComplianceDetail>, List<Map<String, dynamic>>>(complianceDetails, (value) => pulumi.Input.encodeList<GetResourcesResourceTagMappingListComplianceDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceArn': resourceArn,
      'tags': tags,
    };
  }

  factory GetResourcesResourceTagMappingList.fromMap(Map<String, dynamic> map) {
    return GetResourcesResourceTagMappingList(
      complianceDetails: (pulumi.Input.decodeList<GetResourcesResourceTagMappingListComplianceDetail>(map['complianceDetails']!, (value) => GetResourcesResourceTagMappingListComplianceDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceArn: (map['resourceArn'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

