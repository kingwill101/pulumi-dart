import 'package:pulumi/pulumi.dart';
import 'app_profile_args.dart';
import 'multi_cluster_routing_use_any_response.dart';
import 'single_cluster_routing_response.dart';
import 'standard_isolation_response.dart';

/// Creates an app profile within an instance.
class AppProfile extends CustomResource {
  /// Required. The ID to be used when referring to the new app profile within its instance, e.g., just `myprofile` rather than `projects/myproject/instances/myinstance/appProfiles/myprofile`.
  late final Output<String> appProfileId;

  /// Long form description of the use case for this AppProfile.
  late final Output<String> description;

  /// Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.
  late final Output<String> etag;

  /// If true, ignore safety checks when creating the app profile.
  late final Output<bool?> ignoreWarnings;
  late final Output<String> instanceId;

  /// Use a multi-cluster routing policy.
  late final Output<MultiClusterRoutingUseAnyResponse>
      multiClusterRoutingUseAny;

  /// The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  late final Output<String> name;

  /// This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
  late final Output<String> priority;
  late final Output<String> project;

  /// Use a single-cluster routing policy.
  late final Output<SingleClusterRoutingResponse> singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from other use cases.
  late final Output<StandardIsolationResponse> standardIsolation;

  AppProfile(
    String name, {
    AppProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigtableadmin/v2:AppProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appProfileId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.ignoreWarnings = Output.createUnknown<bool?>();
    this.instanceId = Output.createUnknown<String>();
    this.multiClusterRoutingUseAny =
        Output.createUnknown<MultiClusterRoutingUseAnyResponse>();
    this.name = Output.createUnknown<String>();
    this.priority = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.singleClusterRouting =
        Output.createUnknown<SingleClusterRoutingResponse>();
    this.standardIsolation = Output.createUnknown<StandardIsolationResponse>();
  }
}
