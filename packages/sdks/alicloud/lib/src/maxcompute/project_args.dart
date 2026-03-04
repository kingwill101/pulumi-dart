// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_ip_white_list.dart';
import 'project_properties.dart';
import 'project_security_properties.dart';

/// {@template pulumi_maxcompute_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_maxcompute_project_project_args_doc}
class ProjectArgs {
  /// Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  final pulumi.Input<String>? comment;

  /// Used to implement computing resource allocation. Valid values: subQuota Nickname
  /// If the calculation Quota is not specified, the default Quota resource will be consumed by jobs initiated by the project. For more information about computing resource usage, see [Computing Resource Usage](https://www.alibabacloud.com/help/en/maxcompute/user-guide/use-of-computing-resources).
  final pulumi.Input<String>? defaultQuota;

  /// IP whitelist See `ip_white_list` below.
  final pulumi.Input<ProjectIpWhiteList>? ipWhiteList;

  /// Whether to logically delete. Default value: true. Value: (ture/false),
  ///
  /// &gt; **NOTE:** -- ture: In this case, the project status will be changed to' deleting' and completely deleted after 14 days. -- false: delete immediately, that is, completely deleted and permanently irrecoverable.
  final pulumi.Input<String>? isLogical;
  final pulumi.Input<String>? productType;

  /// The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  final pulumi.Input<String>? projectName;

  /// Project base attributes See `properties` below.
  final pulumi.Input<ProjectProperties>? properties;

  /// Security-related attributes See `security_properties` below.
  final pulumi.Input<ProjectSecurityProperties>? securityProperties;

  /// The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  final pulumi.Input<String>? status;

  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Indicates whether data storage by schema is supported. Valid values:
  final pulumi.Input<bool>? threeTierModel;

  /// Creates a new [ProjectArgs].
  /// [comment] Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  /// [defaultQuota] Used to implement computing resource allocation. Valid values: subQuota Nickname
  /// [ipWhiteList] IP whitelist See `ip_white_list` below.
  /// [isLogical] Whether to logically delete. Default value: true. Value: (ture/false),
  /// [productType] Optional.
  /// [projectName] The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  /// [properties] Project base attributes See `properties` below.
  /// [securityProperties] Security-related attributes See `security_properties` below.
  /// [status] The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  /// [tags] The tag of the resource
  /// [threeTierModel] Indicates whether data storage by schema is supported. Valid values:
  ProjectArgs({
    this.comment,
    this.defaultQuota,
    this.ipWhiteList,
    this.isLogical,
    this.productType,
    this.projectName,
    this.properties,
    this.securityProperties,
    this.status,
    this.tags,
    this.threeTierModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'defaultQuota': ?defaultQuota,
      'ipWhiteList':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectIpWhiteList,
            Map<String, dynamic>
          >(ipWhiteList, (value) => value.toMap()),
      'isLogical': ?isLogical,
      'productType': ?productType,
      'projectName': ?projectName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'securityProperties':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectSecurityProperties,
            Map<String, dynamic>
          >(securityProperties, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'threeTierModel': ?threeTierModel,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultQuota: (() {
        final guardedValue = map['defaultQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipWhiteList: (() {
        final guardedValue = map['ipWhiteList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectIpWhiteList.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isLogical: (() {
        final guardedValue = map['isLogical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: (() {
        final guardedValue = map['projectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityProperties: (() {
        final guardedValue = map['securityProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectSecurityProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      threeTierModel: (() {
        final guardedValue = map['threeTierModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
