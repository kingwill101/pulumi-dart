import 'package:pulumi/pulumi.dart';
import 'trail_args.dart';

class Trail extends ComponentResource {
  /// The managed S3 Bucket where the Trail will place its logs.
  late final Output<dynamic> bucket;

  /// The managed Cloudwatch Log Group.
  late final Output<dynamic> logGroup;

  /// The CloudTrail Trail.
  late final Output<dynamic> trail;

  Trail(
    String name, {
    TrailArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:cloudtrail:Trail',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.bucket = registerOutput<dynamic>('bucket');
    this.logGroup = registerOutput<dynamic>('logGroup');
    this.trail = registerOutput<dynamic>('trail');
  }
}
