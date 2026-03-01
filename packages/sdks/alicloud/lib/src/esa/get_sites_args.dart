// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_get_sites_get_sites_args_doc}
/// Arguments for getSites.
/// {@endtemplate}
/// {@macro pulumi_esa_get_sites_get_sites_args_doc}
class GetSitesArgs {
  /// Access type. Value:-**NS**: Managed access via NS.-**CNAME**: access through CNAME.
  final pulumi.Input<String>? accessType;
  /// Acceleration area
  final pulumi.Input<String>? coverage;
  /// A list of Site IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// Only the Enterprise version, pass **true** when the table only queries the enterprise version of the site.
  final pulumi.Input<bool>? onlyEnterprise;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Current page number.
  final pulumi.Input<int>? pageNumber;
  /// Number of records per page.
  final pulumi.Input<int>? pageSize;
  /// Package subscription type. Value:-**basicplan**: Basic version.-**standardplan**: Standard version.-**advancedplan**: Advanced version.-**enterpriseplan**: Enterprise Edition.
  final pulumi.Input<String>? planSubscribeType;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Site Name
  final pulumi.Input<String>? siteName;
  /// The search match pattern for the site name. The default value is exact match. Valid values:-**prefix**: matches the prefix.-**suffix**: The suffix matches.-**exact**: exact match.-**fuzzy**: fuzzy match.
  final pulumi.Input<String>? siteSearchType;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSitesArgs].
  /// [accessType] Access type. Value:-**NS**: Managed access via NS.-**CNAME**: access through CNAME.
  /// [coverage] Acceleration area
  /// [ids] A list of Site IDs.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [onlyEnterprise] Only the Enterprise version, pass **true** when the table only queries the enterprise version of the site.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] Number of records per page.
  /// [planSubscribeType] Package subscription type. Value:-**basicplan**: Basic version.-**standardplan**: Standard version.-**advancedplan**: Advanced version.-**enterpriseplan**: Enterprise Edition.
  /// [resourceGroupId] The ID of the resource group
  /// [siteName] Site Name
  /// [siteSearchType] The search match pattern for the site name. The default value is exact match. Valid values:-**prefix**: matches the prefix.-**suffix**: The suffix matches.-**exact**: exact match.-**fuzzy**: fuzzy match.
  /// [status] The status of the resource
  /// [tags] Resource tags
  GetSitesArgs({
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? coverage,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<bool>? onlyEnterprise,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? planSubscribeType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? siteName,
    pulumi.Output<String>? siteSearchType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      coverage = pulumi.Input.asOptionalInput<String>(coverage),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      onlyEnterprise = pulumi.Input.asOptionalInput<bool>(onlyEnterprise),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      planSubscribeType = pulumi.Input.asOptionalInput<String>(planSubscribeType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      siteSearchType = pulumi.Input.asOptionalInput<String>(siteSearchType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'coverage': ?coverage,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'onlyEnterprise': ?onlyEnterprise,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'planSubscribeType': ?planSubscribeType,
      'resourceGroupId': ?resourceGroupId,
      'siteName': ?siteName,
      'siteSearchType': ?siteSearchType,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetSitesArgs(
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      coverage: map['coverage'] == null ? null : pulumi.Output.create<String>(map['coverage'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      onlyEnterprise: map['onlyEnterprise'] == null ? null : pulumi.Output.create<bool>(map['onlyEnterprise'] as bool),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      planSubscribeType: map['planSubscribeType'] == null ? null : pulumi.Output.create<String>(map['planSubscribeType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      siteName: map['siteName'] == null ? null : pulumi.Output.create<String>(map['siteName'] as String),
      siteSearchType: map['siteSearchType'] == null ? null : pulumi.Output.create<String>(map['siteSearchType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

