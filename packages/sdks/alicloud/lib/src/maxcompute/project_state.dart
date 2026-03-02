// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_ip_white_list.dart';
import 'project_properties.dart';
import 'project_security_properties.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  final pulumi.Input<String>? comment;
  /// Represents the creation time of the project
  final pulumi.Input<String>? createTime;
  /// Used to implement computing resource allocation. Valid values: subQuota Nickname
  /// If the calculation Quota is not specified, the default Quota resource will be consumed by jobs initiated by the project. For more information about computing resource usage, see [Computing Resource Usage](https://www.alibabacloud.com/help/en/maxcompute/user-guide/use-of-computing-resources).
  final pulumi.Input<String>? defaultQuota;
  /// IP whitelist See `ip_white_list` below.
  final pulumi.Input<ProjectIpWhiteList>? ipWhiteList;
  /// Whether to logically delete. Default value: true. Value: (ture/false),
  ///
  /// > **NOTE:** -- ture: In this case, the project status will be changed to' deleting' and completely deleted after 14 days. -- false: delete immediately, that is, completely deleted and permanently irrecoverable.
  final pulumi.Input<String>? isLogical;
  /// Project owner
  final pulumi.Input<String>? owner;
  final pulumi.Input<String>? productType;
  /// The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  final pulumi.Input<String>? projectName;
  /// Project base attributes See `properties` below.
  final pulumi.Input<ProjectProperties>? properties;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// Security-related attributes See `security_properties` below.
  final pulumi.Input<ProjectSecurityProperties>? securityProperties;
  /// The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Indicates whether data storage by schema is supported. Valid values:
  final pulumi.Input<bool>? threeTierModel;
  /// Project type
  final pulumi.Input<String>? type;

  /// Creates a new [ProjectState].
  /// [comment] Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  /// [createTime] Represents the creation time of the project
  /// [defaultQuota] Used to implement computing resource allocation. Valid values: subQuota Nickname
  /// [ipWhiteList] IP whitelist See `ip_white_list` below.
  /// [isLogical] Whether to logically delete. Default value: true. Value: (ture/false),
  /// [owner] Project owner
  /// [productType] Optional.
  /// [projectName] The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  /// [properties] Project base attributes See `properties` below.
  /// [regionId] The region ID of the resource
  /// [securityProperties] Security-related attributes See `security_properties` below.
  /// [status] The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  /// [tags] The tag of the resource
  /// [threeTierModel] Indicates whether data storage by schema is supported. Valid values:
  /// [type] Project type
  ProjectState({
    this.comment,
    this.createTime,
    this.defaultQuota,
    this.ipWhiteList,
    this.isLogical,
    this.owner,
    this.productType,
    this.projectName,
    this.properties,
    this.regionId,
    this.securityProperties,
    this.status,
    this.tags,
    this.threeTierModel,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'createTime': ?createTime,
      'defaultQuota': ?defaultQuota,
      'ipWhiteList': ?pulumi.Input.mapOptionalInputValue<ProjectIpWhiteList, Map<String, dynamic>>(ipWhiteList, (value) => value.toMap()),
      'isLogical': ?isLogical,
      'owner': ?owner,
      'productType': ?productType,
      'projectName': ?projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProjectProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'regionId': ?regionId,
      'securityProperties': ?pulumi.Input.mapOptionalInputValue<ProjectSecurityProperties, Map<String, dynamic>>(securityProperties, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'threeTierModel': ?threeTierModel,
      'type': ?type,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      comment: map['comment'] == null ? null : (map['comment']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      defaultQuota: map['defaultQuota'] == null ? null : (map['defaultQuota']! as String).input(),
      ipWhiteList: map['ipWhiteList'] == null ? null : (ProjectIpWhiteList.fromMap((map['ipWhiteList']! as Map).cast<String, dynamic>())).input(),
      isLogical: map['isLogical'] == null ? null : (map['isLogical']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      productType: map['productType'] == null ? null : (map['productType']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      properties: map['properties'] == null ? null : (ProjectProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      securityProperties: map['securityProperties'] == null ? null : (ProjectSecurityProperties.fromMap((map['securityProperties']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      threeTierModel: map['threeTierModel'] == null ? null : (map['threeTierModel']! as bool).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

