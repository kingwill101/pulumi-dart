import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_args.dart';

class Trail extends pulumi.ComponentResource {
  /// The managed S3 Bucket where the Trail will place its logs.
  late final pulumi.Output<dynamic> bucket;

  /// The managed Cloudwatch Log Group.
  late final pulumi.Output<dynamic> logGroup;

  /// The CloudTrail Trail.
  late final pulumi.Output<dynamic> trail;

  /// Creates a new [Trail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trail]. {@macro pulumi_cloudtrail_trail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trail(
    String name, {
    TrailArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'awsx:cloudtrail:Trail',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    this.bucket = registerOutput<dynamic>('bucket');
    this.logGroup = registerOutput<dynamic>('logGroup');
    this.trail = registerOutput<dynamic>('trail');
  }
}
