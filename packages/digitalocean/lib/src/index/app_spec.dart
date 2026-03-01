// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_alert.dart';
import 'app_spec_database.dart';
import 'app_spec_domain_name.dart';
import 'app_spec_egress.dart';
import 'app_spec_env.dart';
import 'app_spec_function.dart';
import 'app_spec_ingress.dart';
import 'app_spec_job.dart';
import 'app_spec_maintenance.dart';
import 'app_spec_service.dart';
import 'app_spec_static_site.dart';
import 'app_spec_vpc.dart';
import 'app_spec_worker.dart';

class AppSpec {
  /// Describes an alert policy for the component.
  final List<AppSpecAlert>? alerts;
  final List<AppSpecDatabase>? databases;
  /// A boolean indicating whether to disable the edge cache for this app. Default: `false`. Available only for non-static sites. Requires custom domains and applies to all the domains of the app.
  final bool? disableEdgeCache;
  /// A boolean indicating whether to disable email obfuscation for this app. Default: `false`. Requires custom domains and applies to all the domains of the app.
  final bool? disableEmailObfuscation;
  /// Describes a domain where the application will be made available.
  final List<AppSpecDomainName>? domainNames;
  final List<String>? domains;
  /// Specification for app egress configurations.
  final List<AppSpecEgress>? egresses;
  /// A boolean, when set to `true`, enables enhanced analyzing of incoming traffic to prevent layer 7 DDoS attacks. Default: `false`. Requires custom domains and applies to all the domains of the app.
  final bool? enhancedThreatControlEnabled;
  /// Describes an environment variable made available to an app competent.
  final List<AppSpecEnv>? envs;
  /// A list of the features applied to the app. The default buildpack can be overridden here. List of available buildpacks can be found using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/reference/apps/list-buildpacks/)
  final List<String>? features;
  final List<AppSpecFunction>? functions;
  /// Specification for component routing, rewrites, and redirects.
  final AppSpecIngress? ingress;
  final List<AppSpecJob>? jobs;
  /// Specification to configure maintenance settings for the app, such as maintenance mode and archiving the app.
  final AppSpecMaintenance? maintenance;
  /// The name of the component.
  final String name;
  /// The slug for the DigitalOcean data center region hosting the app.
  final String? region;
  final List<AppSpecService>? services;
  final List<AppSpecStaticSite>? staticSites;
  /// Specification for VPC.
  final List<AppSpecVpc>? vpcs;
  final List<AppSpecWorker>? workers;

  /// Creates a new [AppSpec].
  /// [alerts] Describes an alert policy for the component.
  /// [databases] Optional.
  /// [disableEdgeCache] A boolean indicating whether to disable the edge cache for this app. Default: `false`. Available only for non-static sites. Requires custom domains and applies to all the domains of the app.
  /// [disableEmailObfuscation] A boolean indicating whether to disable email obfuscation for this app. Default: `false`. Requires custom domains and applies to all the domains of the app.
  /// [domainNames] Describes a domain where the application will be made available.
  /// [domains] Optional.
  /// [egresses] Specification for app egress configurations.
  /// [enhancedThreatControlEnabled] A boolean, when set to `true`, enables enhanced analyzing of incoming traffic to prevent layer 7 DDoS attacks. Default: `false`. Requires custom domains and applies to all the domains of the app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [features] A list of the features applied to the app. The default buildpack can be overridden here. List of available buildpacks can be found using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/reference/apps/list-buildpacks/)
  /// [functions] Optional.
  /// [ingress] Specification for component routing, rewrites, and redirects.
  /// [jobs] Optional.
  /// [maintenance] Specification to configure maintenance settings for the app, such as maintenance mode and archiving the app.
  /// [name] The name of the component.
  /// [region] The slug for the DigitalOcean data center region hosting the app.
  /// [services] Optional.
  /// [staticSites] Optional.
  /// [vpcs] Specification for VPC.
  /// [workers] Optional.
  AppSpec({
    this.alerts,
    this.databases,
    this.disableEdgeCache,
    this.disableEmailObfuscation,
    this.domainNames,
    this.domains,
    this.egresses,
    this.enhancedThreatControlEnabled,
    this.envs,
    this.features,
    this.functions,
    this.ingress,
    this.jobs,
    this.maintenance,
    required this.name,
    this.region,
    this.services,
    this.staticSites,
    this.vpcs,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<AppSpecAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'databases': ?databases == null ? null : pulumi.Input.encodeList<AppSpecDatabase, Map<String, dynamic>>(databases!, (value) => value.toMap()),
      'disableEdgeCache': ?disableEdgeCache,
      'disableEmailObfuscation': ?disableEmailObfuscation,
      'domainNames': ?domainNames == null ? null : pulumi.Input.encodeList<AppSpecDomainName, Map<String, dynamic>>(domainNames!, (value) => value.toMap()),
      'domains': ?domains,
      'egresses': ?egresses == null ? null : pulumi.Input.encodeList<AppSpecEgress, Map<String, dynamic>>(egresses!, (value) => value.toMap()),
      'enhancedThreatControlEnabled': ?enhancedThreatControlEnabled,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<AppSpecEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'features': ?features,
      'functions': ?functions == null ? null : pulumi.Input.encodeList<AppSpecFunction, Map<String, dynamic>>(functions!, (value) => value.toMap()),
      'ingress': ?ingress == null ? null : ingress!.toMap(),
      'jobs': ?jobs == null ? null : pulumi.Input.encodeList<AppSpecJob, Map<String, dynamic>>(jobs!, (value) => value.toMap()),
      'maintenance': ?maintenance == null ? null : maintenance!.toMap(),
      'name': name,
      'region': ?region,
      'services': ?services == null ? null : pulumi.Input.encodeList<AppSpecService, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'staticSites': ?staticSites == null ? null : pulumi.Input.encodeList<AppSpecStaticSite, Map<String, dynamic>>(staticSites!, (value) => value.toMap()),
      'vpcs': ?vpcs == null ? null : pulumi.Input.encodeList<AppSpecVpc, Map<String, dynamic>>(vpcs!, (value) => value.toMap()),
      'workers': ?workers == null ? null : pulumi.Input.encodeList<AppSpecWorker, Map<String, dynamic>>(workers!, (value) => value.toMap()),
    };
  }

  factory AppSpec.fromMap(Map<String, dynamic> map) {
    return AppSpec(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<AppSpecAlert>(map['alerts'], (value) => AppSpecAlert.fromMap((value as Map).cast<String, dynamic>())),
      databases: map['databases'] == null ? null : pulumi.Input.decodeList<AppSpecDatabase>(map['databases'], (value) => AppSpecDatabase.fromMap((value as Map).cast<String, dynamic>())),
      disableEdgeCache: map['disableEdgeCache'] == null ? null : map['disableEdgeCache'] as bool,
      disableEmailObfuscation: map['disableEmailObfuscation'] == null ? null : map['disableEmailObfuscation'] as bool,
      domainNames: map['domainNames'] == null ? null : pulumi.Input.decodeList<AppSpecDomainName>(map['domainNames'], (value) => AppSpecDomainName.fromMap((value as Map).cast<String, dynamic>())),
      domains: map['domains'] == null ? null : (map['domains'] as List).cast<String>(),
      egresses: map['egresses'] == null ? null : pulumi.Input.decodeList<AppSpecEgress>(map['egresses'], (value) => AppSpecEgress.fromMap((value as Map).cast<String, dynamic>())),
      enhancedThreatControlEnabled: map['enhancedThreatControlEnabled'] == null ? null : map['enhancedThreatControlEnabled'] as bool,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<AppSpecEnv>(map['envs'], (value) => AppSpecEnv.fromMap((value as Map).cast<String, dynamic>())),
      features: map['features'] == null ? null : (map['features'] as List).cast<String>(),
      functions: map['functions'] == null ? null : pulumi.Input.decodeList<AppSpecFunction>(map['functions'], (value) => AppSpecFunction.fromMap((value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : AppSpecIngress.fromMap((map['ingress'] as Map).cast<String, dynamic>()),
      jobs: map['jobs'] == null ? null : pulumi.Input.decodeList<AppSpecJob>(map['jobs'], (value) => AppSpecJob.fromMap((value as Map).cast<String, dynamic>())),
      maintenance: map['maintenance'] == null ? null : AppSpecMaintenance.fromMap((map['maintenance'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      services: map['services'] == null ? null : pulumi.Input.decodeList<AppSpecService>(map['services'], (value) => AppSpecService.fromMap((value as Map).cast<String, dynamic>())),
      staticSites: map['staticSites'] == null ? null : pulumi.Input.decodeList<AppSpecStaticSite>(map['staticSites'], (value) => AppSpecStaticSite.fromMap((value as Map).cast<String, dynamic>())),
      vpcs: map['vpcs'] == null ? null : pulumi.Input.decodeList<AppSpecVpc>(map['vpcs'], (value) => AppSpecVpc.fromMap((value as Map).cast<String, dynamic>())),
      workers: map['workers'] == null ? null : pulumi.Input.decodeList<AppSpecWorker>(map['workers'], (value) => AppSpecWorker.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

