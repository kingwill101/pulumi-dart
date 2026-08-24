# Changelog

## 0.1.0

- Initial Dart-first FaaS components for AWS Lambda and Google Cloud Run.
- Add strongly typed image, archive, and AWS-native S3 source variants.
- Support local and signed remote archives from R2 and other object stores.
- Add typed targets for every `dart compile` frontend and `dart build cli`.
- Discover the active Dart or FVM SDK from `PATH` for local builds.
- Detect `build_runner` projects and rebuild archives when Dart inputs change.
