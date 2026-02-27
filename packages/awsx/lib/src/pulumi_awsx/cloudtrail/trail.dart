import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_args.dart';

class Trail extends pulumi.ComponentResource {
  /// The managed S3 Bucket where the Trail will place its logs.
  late final pulumi.Output<dynamic> bucket;

  /// The managed Cloudwatch Log Group.
  late final pulumi.Output<dynamic> logGroup;

  /// The CloudTrail Trail.
  late final pulumi.Output<dynamic> trail;

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
