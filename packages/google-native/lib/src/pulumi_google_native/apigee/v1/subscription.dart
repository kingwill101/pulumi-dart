import 'package:pulumi/pulumi.dart';
import 'subscription_args.dart';

/// Creates a subscription to an API product.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Subscription extends CustomResource {
  /// Name of the API product for which the developer is purchasing a subscription.
  late final Output<String> apiproduct;

  /// Time when the API product subscription was created in milliseconds since epoch.
  late final Output<String> createdAt;
  late final Output<String> developerId;

  /// Time when the API product subscription ends in milliseconds since epoch.
  late final Output<String> endTime;

  /// Time when the API product subscription was last modified in milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Name of the API product subscription.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Time when the API product subscription starts in milliseconds since epoch.
  late final Output<String> startTime;

  Subscription(
    String name, {
    SubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiproduct = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.developerId = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.lastModifiedAt = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
  }
}
