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
    pulumi.Output<String>? comment,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? defaultQuota,
    pulumi.Output<ProjectIpWhiteList>? ipWhiteList,
    pulumi.Output<String>? isLogical,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? productType,
    pulumi.Output<String>? projectName,
    pulumi.Output<ProjectProperties>? properties,
    pulumi.Output<String>? regionId,
    pulumi.Output<ProjectSecurityProperties>? securityProperties,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? threeTierModel,
    pulumi.Output<String>? type,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      defaultQuota = pulumi.Input.asOptionalInput<String>(defaultQuota),
      ipWhiteList = pulumi.Input.asOptionalInput<ProjectIpWhiteList>(ipWhiteList),
      isLogical = pulumi.Input.asOptionalInput<String>(isLogical),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<ProjectProperties>(properties),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      securityProperties = pulumi.Input.asOptionalInput<ProjectSecurityProperties>(securityProperties),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      threeTierModel = pulumi.Input.asOptionalInput<bool>(threeTierModel),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      defaultQuota: map['defaultQuota'] == null ? null : pulumi.Output.create<String>(map['defaultQuota'] as String),
      ipWhiteList: map['ipWhiteList'] == null ? null : pulumi.Output.create<ProjectIpWhiteList>(ProjectIpWhiteList.fromMap((map['ipWhiteList'] as Map).cast<String, dynamic>())),
      isLogical: map['isLogical'] == null ? null : pulumi.Output.create<String>(map['isLogical'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ProjectProperties>(ProjectProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      securityProperties: map['securityProperties'] == null ? null : pulumi.Output.create<ProjectSecurityProperties>(ProjectSecurityProperties.fromMap((map['securityProperties'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      threeTierModel: map['threeTierModel'] == null ? null : pulumi.Output.create<bool>(map['threeTierModel'] as bool),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

