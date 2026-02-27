import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';

/// Creates a subscription to an API product.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Subscription extends pulumi.CustomResource {
  /// Name of the API product for which the developer is purchasing a subscription.
  late final pulumi.Output<String> apiproduct;

  /// Time when the API product subscription was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> developerId;

  /// Time when the API product subscription ends in milliseconds since epoch.
  late final pulumi.Output<String> endTime;

  /// Time when the API product subscription was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Name of the API product subscription.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Time when the API product subscription starts in milliseconds since epoch.
  late final pulumi.Output<String> startTime;

  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiproduct = registerOutput<String>('apiproduct');
    this.createdAt = registerOutput<String>('createdAt');
    this.developerId = registerOutput<String>('developerId');
    this.endTime = registerOutput<String>('endTime');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.startTime = registerOutput<String>('startTime');
  }
}
