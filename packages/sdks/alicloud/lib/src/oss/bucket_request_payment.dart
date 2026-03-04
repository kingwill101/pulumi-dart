import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_request_payment_args.dart';
import 'bucket_request_payment_state.dart';

/// ## Import
///
/// OSS Bucket Request Payment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketRequestPayment:BucketRequestPayment example <id>
/// ```
class BucketRequestPayment extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;

  /// The payer of the request and traffic fees.Valid values: BucketOwner: request and traffic fees are paid by the bucket owner. Requester: request and traffic fees are paid by the requester.
  late final pulumi.Output<String> payer;

  /// Creates a new [BucketRequestPayment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketRequestPayment]. {@macro pulumi_oss_bucket_request_payment_bucket_request_payment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketRequestPayment(
    String name, {
    BucketRequestPaymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketRequestPayment:BucketRequestPayment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    payer = registerOutput<String>('payer');
  }

  /// Gets an existing [BucketRequestPayment] resource's state with the given [name] and [id].
  static BucketRequestPayment get(
    String name,
    pulumi.Input<String> id, {
    BucketRequestPaymentState? state,
  }) {
    return BucketRequestPayment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketRequestPayment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketRequestPayment:BucketRequestPayment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    payer = registerOutput<String>('payer');
  }
}
