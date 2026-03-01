// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_auto_branch_creation_config.dart';
import 'app_cache_config.dart';
import 'app_custom_rule.dart';
import 'app_job_config.dart';
import 'app_production_branch.dart';

/// Input properties used for looking up and filtering App resources.
class AppState {
  /// Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  final pulumi.Input<String>? accessToken;
  /// ARN of the Amplify app.
  final pulumi.Input<String>? arn;
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
  /// Default domain for the Amplify app.
  final pulumi.Input<String>? defaultDomain;
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
  /// Describes the information about a production branch for an Amplify app. A `production_branch` block is documented below.
  final pulumi.Input<List<AppProductionBranch>>? productionBranches;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Repository for an Amplify app.
  final pulumi.Input<String>? repository;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AppState].
  /// [accessToken] Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  /// [arn] ARN of the Amplify app.
  /// [autoBranchCreationConfig] Automated branch creation configuration for an Amplify app. See `auto_branch_creation_config` Block for details.
  /// [autoBranchCreationPatterns] Automated branch creation glob patterns for an Amplify app.
  /// [basicAuthCredentials] Credentials for basic authorization for an Amplify app.
  /// [buildSpec] The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  /// [cacheConfig] Cache configuration for the Amplify app. See `cache_config` Block for details.
  /// [computeRoleArn] AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  /// [customHeaders] The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  /// [customRules] Custom rewrite and redirect rules for an Amplify app. See `custom_rule` Block for details.
  /// [defaultDomain] Default domain for the Amplify app.
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
  /// [productionBranches] Describes the information about a production branch for an Amplify app. A `production_branch` block is documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] Repository for an Amplify app.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AppState({
    pulumi.Output<String>? accessToken,
    pulumi.Output<String>? arn,
    pulumi.Output<AppAutoBranchCreationConfig>? autoBranchCreationConfig,
    pulumi.Output<List<String>>? autoBranchCreationPatterns,
    pulumi.Output<String>? basicAuthCredentials,
    pulumi.Output<String>? buildSpec,
    pulumi.Output<AppCacheConfig>? cacheConfig,
    pulumi.Output<String>? computeRoleArn,
    pulumi.Output<String>? customHeaders,
    pulumi.Output<List<AppCustomRule>>? customRules,
    pulumi.Output<String>? defaultDomain,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableAutoBranchCreation,
    pulumi.Output<bool>? enableBasicAuth,
    pulumi.Output<bool>? enableBranchAutoBuild,
    pulumi.Output<bool>? enableBranchAutoDeletion,
    pulumi.Output<Map<String, String>>? environmentVariables,
    pulumi.Output<String>? iamServiceRoleArn,
    pulumi.Output<AppJobConfig>? jobConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? oauthToken,
    pulumi.Output<String>? platform,
    pulumi.Output<List<AppProductionBranch>>? productionBranches,
    pulumi.Output<String>? region,
    pulumi.Output<String>? repository,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accessToken = pulumi.Input.asOptionalInput<String>(accessToken),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoBranchCreationConfig = pulumi.Input.asOptionalInput<AppAutoBranchCreationConfig>(autoBranchCreationConfig),
      autoBranchCreationPatterns = pulumi.Input.asOptionalInput<List<String>>(autoBranchCreationPatterns),
      basicAuthCredentials = pulumi.Input.asOptionalInput<String>(basicAuthCredentials),
      buildSpec = pulumi.Input.asOptionalInput<String>(buildSpec),
      cacheConfig = pulumi.Input.asOptionalInput<AppCacheConfig>(cacheConfig),
      computeRoleArn = pulumi.Input.asOptionalInput<String>(computeRoleArn),
      customHeaders = pulumi.Input.asOptionalInput<String>(customHeaders),
      customRules = pulumi.Input.asOptionalInput<List<AppCustomRule>>(customRules),
      defaultDomain = pulumi.Input.asOptionalInput<String>(defaultDomain),
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
      productionBranches = pulumi.Input.asOptionalInput<List<AppProductionBranch>>(productionBranches),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asOptionalInput<String>(repository),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'arn': ?arn,
      'autoBranchCreationConfig': ?pulumi.Input.mapOptionalInputValue<AppAutoBranchCreationConfig, Map<String, dynamic>>(autoBranchCreationConfig, (value) => value.toMap()),
      'autoBranchCreationPatterns': ?autoBranchCreationPatterns,
      'basicAuthCredentials': ?basicAuthCredentials,
      'buildSpec': ?buildSpec,
      'cacheConfig': ?pulumi.Input.mapOptionalInputValue<AppCacheConfig, Map<String, dynamic>>(cacheConfig, (value) => value.toMap()),
      'computeRoleArn': ?computeRoleArn,
      'customHeaders': ?customHeaders,
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<AppCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<AppCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDomain': ?defaultDomain,
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
      'productionBranches': ?pulumi.Input.mapOptionalInputValue<List<AppProductionBranch>, List<Map<String, dynamic>>>(productionBranches, (value) => pulumi.Input.encodeList<AppProductionBranch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'repository': ?repository,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      accessToken: map['accessToken'] == null ? null : pulumi.Output.create<String>(map['accessToken'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoBranchCreationConfig: map['autoBranchCreationConfig'] == null ? null : pulumi.Output.create<AppAutoBranchCreationConfig>(AppAutoBranchCreationConfig.fromMap((map['autoBranchCreationConfig'] as Map).cast<String, dynamic>())),
      autoBranchCreationPatterns: map['autoBranchCreationPatterns'] == null ? null : pulumi.Output.create<List<String>>((map['autoBranchCreationPatterns'] as List).cast<String>()),
      basicAuthCredentials: map['basicAuthCredentials'] == null ? null : pulumi.Output.create<String>(map['basicAuthCredentials'] as String),
      buildSpec: map['buildSpec'] == null ? null : pulumi.Output.create<String>(map['buildSpec'] as String),
      cacheConfig: map['cacheConfig'] == null ? null : pulumi.Output.create<AppCacheConfig>(AppCacheConfig.fromMap((map['cacheConfig'] as Map).cast<String, dynamic>())),
      computeRoleArn: map['computeRoleArn'] == null ? null : pulumi.Output.create<String>(map['computeRoleArn'] as String),
      customHeaders: map['customHeaders'] == null ? null : pulumi.Output.create<String>(map['customHeaders'] as String),
      customRules: map['customRules'] == null ? null : pulumi.Output.create<List<AppCustomRule>>(pulumi.Input.decodeList<AppCustomRule>(map['customRules'], (value) => AppCustomRule.fromMap((value as Map).cast<String, dynamic>()))),
      defaultDomain: map['defaultDomain'] == null ? null : pulumi.Output.create<String>(map['defaultDomain'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableAutoBranchCreation: map['enableAutoBranchCreation'] == null ? null : pulumi.Output.create<bool>(map['enableAutoBranchCreation'] as bool),
      enableBasicAuth: map['enableBasicAuth'] == null ? null : pulumi.Output.create<bool>(map['enableBasicAuth'] as bool),
      enableBranchAutoBuild: map['enableBranchAutoBuild'] == null ? null : pulumi.Output.create<bool>(map['enableBranchAutoBuild'] as bool),
      enableBranchAutoDeletion: map['enableBranchAutoDeletion'] == null ? null : pulumi.Output.create<bool>(map['enableBranchAutoDeletion'] as bool),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environmentVariables'] as Map).cast<String, String>()),
      iamServiceRoleArn: map['iamServiceRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamServiceRoleArn'] as String),
      jobConfig: map['jobConfig'] == null ? null : pulumi.Output.create<AppJobConfig>(AppJobConfig.fromMap((map['jobConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oauthToken: map['oauthToken'] == null ? null : pulumi.Output.create<String>(map['oauthToken'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      productionBranches: map['productionBranches'] == null ? null : pulumi.Output.create<List<AppProductionBranch>>(pulumi.Input.decodeList<AppProductionBranch>(map['productionBranches'], (value) => AppProductionBranch.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: map['repository'] == null ? null : pulumi.Output.create<String>(map['repository'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

