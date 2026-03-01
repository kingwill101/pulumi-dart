// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_service_plan_sku.dart';

/// Result data returned by getAppServicePlan.
class GetAppServicePlanResult {
  /// The ID of the App Service Environment where the App Service Plan is located.
  final String appServiceEnvironmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A flag that indicates if it's a xenon plan (support for Windows Container)
  final bool isXenon;
  /// The Operating System type of the App Service Plan
  final String kind;
  /// The Azure location where the App Service Plan exists
  final String location;
  /// The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  final int maximumElasticWorkerCount;
  /// The maximum number of workers supported with the App Service Plan's sku.
  final int maximumNumberOfWorkers;
  final String name;
  /// Can Apps assigned to this App Service Plan be scaled independently?
  final bool perSiteScaling;
  /// Is this App Service Plan `Reserved`?
  final bool reserved;
  final String resourceGroupName;
  /// A `sku` block as documented below.
  final GetAppServicePlanSku sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// App Service Plan perform availability zone balancing.
  final bool zoneRedundant;

  /// Creates a new [GetAppServicePlanResult].
  /// [appServiceEnvironmentId] The ID of the App Service Environment where the App Service Plan is located.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isXenon] A flag that indicates if it's a xenon plan (support for Windows Container)
  /// [kind] The Operating System type of the App Service Plan
  /// [location] The Azure location where the App Service Plan exists
  /// [maximumElasticWorkerCount] The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  /// [maximumNumberOfWorkers] The maximum number of workers supported with the App Service Plan's sku.
  /// [name] Required.
  /// [perSiteScaling] Can Apps assigned to this App Service Plan be scaled independently?
  /// [reserved] Is this App Service Plan `Reserved`?
  /// [resourceGroupName] Required.
  /// [sku] A `sku` block as documented below.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zoneRedundant] App Service Plan perform availability zone balancing.
  GetAppServicePlanResult({
    required this.appServiceEnvironmentId,
    required this.id,
    required this.isXenon,
    required this.kind,
    required this.location,
    required this.maximumElasticWorkerCount,
    required this.maximumNumberOfWorkers,
    required this.name,
    required this.perSiteScaling,
    required this.reserved,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
    required this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceEnvironmentId': appServiceEnvironmentId,
      'id': id,
      'isXenon': isXenon,
      'kind': kind,
      'location': location,
      'maximumElasticWorkerCount': maximumElasticWorkerCount,
      'maximumNumberOfWorkers': maximumNumberOfWorkers,
      'name': name,
      'perSiteScaling': perSiteScaling,
      'reserved': reserved,
      'resourceGroupName': resourceGroupName,
      'sku': sku.toMap(),
      'tags': tags,
      'zoneRedundant': zoneRedundant,
    };
  }

  factory GetAppServicePlanResult.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanResult(
      appServiceEnvironmentId: map['appServiceEnvironmentId'] as String,
      id: map['id'] as String,
      isXenon: map['isXenon'] as bool,
      kind: map['kind'] as String,
      location: map['location'] as String,
      maximumElasticWorkerCount: map['maximumElasticWorkerCount'] as int,
      maximumNumberOfWorkers: map['maximumNumberOfWorkers'] as int,
      name: map['name'] as String,
      perSiteScaling: map['perSiteScaling'] as bool,
      reserved: map['reserved'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: GetAppServicePlanSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: (map['tags'] as Map).cast<String, String>(),
      zoneRedundant: map['zoneRedundant'] as bool,
    );
  }
}

