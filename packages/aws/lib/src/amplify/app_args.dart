// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_auto_branch_creation_config.dart';
import 'app_cache_config.dart';
import 'app_custom_rule.dart';
import 'app_job_config.dart';

/// {@template pulumi_amplify_app_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_amplify_app_app_args_doc}
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

  /// Creates a new [AppArgs].
  /// [accessToken] Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  /// [autoBranchCreationConfig] Automated branch creation configuration for an Amplify app. See `auto_branch_creation_config` Block for details.
  /// [autoBranchCreationPatterns] Automated branch creation glob patterns for an Amplify app.
  /// [basicAuthCredentials] Credentials for basic authorization for an Amplify app.
  /// [buildSpec] The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  /// [cacheConfig] Cache configuration for the Amplify app. See `cache_config` Block for details.
  /// [computeRoleArn] AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  /// [customHeaders] The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  /// [customRules] Custom rewrite and redirect rules for an Amplify app. See `custom_rule` Block for details.
  /// [description] Description for an Amplify app.
  /// [enableAutoBranchCreation] Enables automated branch creation for an Amplify app.
  /// [enableBasicAuth] Enables basic authorization for an Amplify app. This will apply to all branches that are part of this app.
  /// [enableBranchAutoBuild] Enables auto-building of branches for the Amplify App.
  /// [enableBranchAutoDeletion] Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository.
  /// [environmentVariables] Environment variables map for an Amplify app.
  /// [iamServiceRoleArn] AWS Identity and Access Management (IAM) service role for an Amplify app.
  /// [jobConfig] Used to configure the [Amplify Application build instance compute type](https://docs.aws.amazon.com/amplify/latest/APIReference/API_JobConfig.html#amplify-Type-JobConfig-buildComputeType). See `job_config` Block for details.
  /// [name] Name for an Amplify app.
  /// [oauthToken] OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
  /// [platform] Platform or framework for an Amplify app. Valid values: `WEB`, `WEB_COMPUTE`. Default value: `WEB`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] Repository for an Amplify app.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AppArgs({
    String? accessToken,
    AppAutoBranchCreationConfig? autoBranchCreationConfig,
    List<String>? autoBranchCreationPatterns,
    String? basicAuthCredentials,
    String? buildSpec,
    AppCacheConfig? cacheConfig,
    String? computeRoleArn,
    String? customHeaders,
    List<AppCustomRule>? customRules,
    String? description,
    bool? enableAutoBranchCreation,
    bool? enableBasicAuth,
    bool? enableBranchAutoBuild,
    bool? enableBranchAutoDeletion,
    Map<String, String>? environmentVariables,
    String? iamServiceRoleArn,
    AppJobConfig? jobConfig,
    String? name,
    String? oauthToken,
    String? platform,
    String? region,
    String? repository,
    Map<String, String>? tags,
  }) :
      accessToken = pulumi.Input.asOptionalInput<String>(accessToken),
      autoBranchCreationConfig = pulumi.Input.asOptionalInput<AppAutoBranchCreationConfig>(autoBranchCreationConfig),
      autoBranchCreationPatterns = pulumi.Input.asOptionalInput<List<String>>(autoBranchCreationPatterns),
      basicAuthCredentials = pulumi.Input.asOptionalInput<String>(basicAuthCredentials),
      buildSpec = pulumi.Input.asOptionalInput<String>(buildSpec),
      cacheConfig = pulumi.Input.asOptionalInput<AppCacheConfig>(cacheConfig),
      computeRoleArn = pulumi.Input.asOptionalInput<String>(computeRoleArn),
      customHeaders = pulumi.Input.asOptionalInput<String>(customHeaders),
      customRules = pulumi.Input.asOptionalInput<List<AppCustomRule>>(customRules),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableAutoBranchCreation = pulumi.Input.asOptionalInput<bool>(enableAutoBranchCreation),
      enableBasicAuth = pulumi.Input.asOptionalInput<bool>(enableBasicAuth),
      enableBranchAutoBuild = pulumi.Input.asOptionalInput<bool>(enableBranchAutoBuild),
      enableBranchAutoDeletion = pulumi.Input.asOptionalInput<bool>(enableBranchAutoDeletion),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      iamServiceRoleArn = pulumi.Input.asOptionalInput<String>(iamServiceRoleArn),
      jobConfig = pulumi.Input.asOptionalInput<AppJobConfig>(jobConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      oauthToken = pulumi.Input.asOptionalInput<String>(oauthToken),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asOptionalInput<String>(repository),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'autoBranchCreationConfig': ?pulumi.Input.mapOptionalInputValue<AppAutoBranchCreationConfig, Map<String, dynamic>>(autoBranchCreationConfig, (value) => value.toMap()),
      'autoBranchCreationPatterns': ?autoBranchCreationPatterns,
      'basicAuthCredentials': ?basicAuthCredentials,
      'buildSpec': ?buildSpec,
      'cacheConfig': ?pulumi.Input.mapOptionalInputValue<AppCacheConfig, Map<String, dynamic>>(cacheConfig, (value) => value.toMap()),
      'computeRoleArn': ?computeRoleArn,
      'customHeaders': ?customHeaders,
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<AppCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<AppCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enableAutoBranchCreation': ?enableAutoBranchCreation,
      'enableBasicAuth': ?enableBasicAuth,
      'enableBranchAutoBuild': ?enableBranchAutoBuild,
      'enableBranchAutoDeletion': ?enableBranchAutoDeletion,
      'environmentVariables': ?environmentVariables,
      'iamServiceRoleArn': ?iamServiceRoleArn,
      'jobConfig': ?pulumi.Input.mapOptionalInputValue<AppJobConfig, Map<String, dynamic>>(jobConfig, (value) => value.toMap()),
      'name': ?name,
      'oauthToken': ?oauthToken,
      'platform': ?platform,
      'region': ?region,
      'repository': ?repository,
      'tags': ?tags,
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      autoBranchCreationConfig: map['autoBranchCreationConfig'] == null ? null : AppAutoBranchCreationConfig.fromMap((map['autoBranchCreationConfig'] as Map).cast<String, dynamic>()),
      autoBranchCreationPatterns: map['autoBranchCreationPatterns'] == null ? null : (map['autoBranchCreationPatterns'] as List).cast<String>(),
      basicAuthCredentials: map['basicAuthCredentials'] == null ? null : map['basicAuthCredentials'] as String,
      buildSpec: map['buildSpec'] == null ? null : map['buildSpec'] as String,
      cacheConfig: map['cacheConfig'] == null ? null : AppCacheConfig.fromMap((map['cacheConfig'] as Map).cast<String, dynamic>()),
      computeRoleArn: map['computeRoleArn'] == null ? null : map['computeRoleArn'] as String,
      customHeaders: map['customHeaders'] == null ? null : map['customHeaders'] as String,
      customRules: map['customRules'] == null ? null : pulumi.Input.decodeList<AppCustomRule>(map['customRules'], (value) => AppCustomRule.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      enableAutoBranchCreation: map['enableAutoBranchCreation'] == null ? null : map['enableAutoBranchCreation'] as bool,
      enableBasicAuth: map['enableBasicAuth'] == null ? null : map['enableBasicAuth'] as bool,
      enableBranchAutoBuild: map['enableBranchAutoBuild'] == null ? null : map['enableBranchAutoBuild'] as bool,
      enableBranchAutoDeletion: map['enableBranchAutoDeletion'] == null ? null : map['enableBranchAutoDeletion'] as bool,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      iamServiceRoleArn: map['iamServiceRoleArn'] == null ? null : map['iamServiceRoleArn'] as String,
      jobConfig: map['jobConfig'] == null ? null : AppJobConfig.fromMap((map['jobConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      oauthToken: map['oauthToken'] == null ? null : map['oauthToken'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repository: map['repository'] == null ? null : map['repository'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

