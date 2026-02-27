// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_auto_branch_creation_config/app_auto_branch_creation_config.dart';
import '../app_cache_config/app_cache_config.dart';
import '../app_custom_rule/app_custom_rule.dart';
import '../app_job_config/app_job_config.dart';

/// The set of arguments for App.
class AppArgs {
  /// Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  final pulumi.Input<String>? accessToken;

  /// Automated branch creation configuration for an Amplify app. See `auto_branch_creation_config` Block for details.
  final pulumi.Input<AppAutoBranchCreationConfig>? autoBranchCreationConfig;

  /// Automated branch creation glob patterns for an Amplify app.
  final pulumi.Input<List<String>>? autoBranchCreationPatterns;

  /// Credentials for basic authorization for an Amplify app.
  final pulumi.Input<String>? basicAuthCredentials;

  /// The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  final pulumi.Input<String>? buildSpec;

  /// Cache configuration for the Amplify app. See `cache_config` Block for details.
  final pulumi.Input<AppCacheConfig>? cacheConfig;

  /// AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  final pulumi.Input<String>? computeRoleArn;

  /// The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  final pulumi.Input<String>? customHeaders;

  /// Custom rewrite and redirect rules for an Amplify app. See `custom_rule` Block for details.
  final pulumi.Input<List<AppCustomRule>>? customRules;

  /// Description for an Amplify app.
  final pulumi.Input<String>? description;

  /// Enables automated branch creation for an Amplify app.
  final pulumi.Input<bool>? enableAutoBranchCreation;

  /// Enables basic authorization for an Amplify app. This will apply to all branches that are part of this app.
  final pulumi.Input<bool>? enableBasicAuth;

  /// Enables auto-building of branches for the Amplify App.
  final pulumi.Input<bool>? enableBranchAutoBuild;

  /// Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository.
  final pulumi.Input<bool>? enableBranchAutoDeletion;

  /// Environment variables map for an Amplify app.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// AWS Identity and Access Management (IAM) service role for an Amplify app.
  final pulumi.Input<String>? iamServiceRoleArn;

  /// Used to configure the [Amplify Application build instance compute type](https://docs.aws.amazon.com/amplify/latest/APIReference/API_JobConfig.html#amplify-Type-JobConfig-buildComputeType). See `job_config` Block for details.
  final pulumi.Input<AppJobConfig>? jobConfig;

  /// Name for an Amplify app.
  final pulumi.Input<String>? name;

  /// OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
  final pulumi.Input<String>? oauthToken;

  /// Platform or framework for an Amplify app. Valid values: `WEB`, `WEB_COMPUTE`. Default value: `WEB`.
  final pulumi.Input<String>? platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Repository for an Amplify app.
  final pulumi.Input<String>? repository;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  AppArgs({
    this.accessToken,
    this.autoBranchCreationConfig,
    this.autoBranchCreationPatterns,
    this.basicAuthCredentials,
    this.buildSpec,
    this.cacheConfig,
    this.computeRoleArn,
    this.customHeaders,
    this.customRules,
    this.description,
    this.enableAutoBranchCreation,
    this.enableBasicAuth,
    this.enableBranchAutoBuild,
    this.enableBranchAutoDeletion,
    this.environmentVariables,
    this.iamServiceRoleArn,
    this.jobConfig,
    this.name,
    this.oauthToken,
    this.platform,
    this.region,
    this.repository,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue;
    }
    final autoBranchCreationConfigValue = autoBranchCreationConfig;
    if (autoBranchCreationConfigValue != null) {
      map['autoBranchCreationConfig'] = pulumi.Input.mapOptionalInputValue<
              AppAutoBranchCreationConfig, Map<String, dynamic>>(
          autoBranchCreationConfigValue, (value) => value.toMap());
    }
    final autoBranchCreationPatternsValue = autoBranchCreationPatterns;
    if (autoBranchCreationPatternsValue != null) {
      map['autoBranchCreationPatterns'] = autoBranchCreationPatternsValue;
    }
    final basicAuthCredentialsValue = basicAuthCredentials;
    if (basicAuthCredentialsValue != null) {
      map['basicAuthCredentials'] = basicAuthCredentialsValue;
    }
    final buildSpecValue = buildSpec;
    if (buildSpecValue != null) {
      map['buildSpec'] = buildSpecValue;
    }
    final cacheConfigValue = cacheConfig;
    if (cacheConfigValue != null) {
      map['cacheConfig'] = pulumi.Input.mapOptionalInputValue<AppCacheConfig,
          Map<String, dynamic>>(cacheConfigValue, (value) => value.toMap());
    }
    final computeRoleArnValue = computeRoleArn;
    if (computeRoleArnValue != null) {
      map['computeRoleArn'] = computeRoleArnValue;
    }
    final customHeadersValue = customHeaders;
    if (customHeadersValue != null) {
      map['customHeaders'] = customHeadersValue;
    }
    final customRulesValue = customRules;
    if (customRulesValue != null) {
      map['customRules'] = pulumi.Input.mapOptionalInputValue<
              List<AppCustomRule>, List<Map<String, dynamic>>>(
          customRulesValue,
          (value) =>
              pulumi.Input.encodeList<AppCustomRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableAutoBranchCreationValue = enableAutoBranchCreation;
    if (enableAutoBranchCreationValue != null) {
      map['enableAutoBranchCreation'] = enableAutoBranchCreationValue;
    }
    final enableBasicAuthValue = enableBasicAuth;
    if (enableBasicAuthValue != null) {
      map['enableBasicAuth'] = enableBasicAuthValue;
    }
    final enableBranchAutoBuildValue = enableBranchAutoBuild;
    if (enableBranchAutoBuildValue != null) {
      map['enableBranchAutoBuild'] = enableBranchAutoBuildValue;
    }
    final enableBranchAutoDeletionValue = enableBranchAutoDeletion;
    if (enableBranchAutoDeletionValue != null) {
      map['enableBranchAutoDeletion'] = enableBranchAutoDeletionValue;
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = environmentVariablesValue;
    }
    final iamServiceRoleArnValue = iamServiceRoleArn;
    if (iamServiceRoleArnValue != null) {
      map['iamServiceRoleArn'] = iamServiceRoleArnValue;
    }
    final jobConfigValue = jobConfig;
    if (jobConfigValue != null) {
      map['jobConfig'] = pulumi.Input.mapOptionalInputValue<AppJobConfig,
          Map<String, dynamic>>(jobConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final oauthTokenValue = oauthToken;
    if (oauthTokenValue != null) {
      map['oauthToken'] = oauthTokenValue;
    }
    final platformValue = platform;
    if (platformValue != null) {
      map['platform'] = platformValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      accessToken: pulumi.Input.asOptionalInput<String>(map['accessToken']),
      autoBranchCreationConfig:
          pulumi.Input.asOptionalInput<AppAutoBranchCreationConfig>(
              map['autoBranchCreationConfig']),
      autoBranchCreationPatterns: pulumi.Input.asOptionalInput<List<String>>(
          map['autoBranchCreationPatterns']),
      basicAuthCredentials:
          pulumi.Input.asOptionalInput<String>(map['basicAuthCredentials']),
      buildSpec: pulumi.Input.asOptionalInput<String>(map['buildSpec']),
      cacheConfig:
          pulumi.Input.asOptionalInput<AppCacheConfig>(map['cacheConfig']),
      computeRoleArn:
          pulumi.Input.asOptionalInput<String>(map['computeRoleArn']),
      customHeaders: pulumi.Input.asOptionalInput<String>(map['customHeaders']),
      customRules:
          pulumi.Input.asOptionalInput<List<AppCustomRule>>(map['customRules']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableAutoBranchCreation:
          pulumi.Input.asOptionalInput<bool>(map['enableAutoBranchCreation']),
      enableBasicAuth:
          pulumi.Input.asOptionalInput<bool>(map['enableBasicAuth']),
      enableBranchAutoBuild:
          pulumi.Input.asOptionalInput<bool>(map['enableBranchAutoBuild']),
      enableBranchAutoDeletion:
          pulumi.Input.asOptionalInput<bool>(map['enableBranchAutoDeletion']),
      environmentVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['environmentVariables']),
      iamServiceRoleArn:
          pulumi.Input.asOptionalInput<String>(map['iamServiceRoleArn']),
      jobConfig: pulumi.Input.asOptionalInput<AppJobConfig>(map['jobConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      oauthToken: pulumi.Input.asOptionalInput<String>(map['oauthToken']),
      platform: pulumi.Input.asOptionalInput<String>(map['platform']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asOptionalInput<String>(map['repository']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
