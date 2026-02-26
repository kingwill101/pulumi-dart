import 'package:pulumi/pulumi.dart';
import 'subscription_args2.dart';

/// Creates a new BeyondCorp Enterprise Subscription in a given organization. Location will always be global as BeyondCorp subscriptions are per organization.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Subscription2 extends CustomResource {
  /// Represents that, if subscription will renew or end when the term ends.
  late final Output<bool> autoRenewEnabled;

  /// Create time of the subscription.
  late final Output<String> createTime;

  /// End time of the subscription.
  late final Output<String> endTime;
  late final Output<String> location;

  /// Unique resource name of the Subscription. The name is ignored when creating a subscription.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Optional. Number of seats in the subscription.
  late final Output<String> seatCount;

  /// SKU of subscription.
  late final Output<String> sku;

  /// Start time of the subscription.
  late final Output<String> startTime;

  /// The current state of the subscription.
  late final Output<String> state;

  /// Type of subscription.
  late final Output<String> type;

  Subscription2(
    String name, {
    SubscriptionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoRenewEnabled = registerOutput<bool>('autoRenewEnabled');
    this.createTime = registerOutput<String>('createTime');
    this.endTime = registerOutput<String>('endTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.seatCount = registerOutput<String>('seatCount');
    this.sku = registerOutput<String>('sku');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
  }
}
