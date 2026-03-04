// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mlflow_model_job_input.dart';

/// Settings used for training the model.
/// For more information on the available settings please visit the official documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
class ImageModelSettingsObjectDetection {
  /// Settings for advanced scenarios.
  final pulumi.Input<String>? advancedSettings;

  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final pulumi.Input<bool>? amsGradient;

  /// Settings for using Augmentations.
  final pulumi.Input<String>? augmentations;

  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? beta1;

  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? beta2;

  /// Maximum number of detections per image, for all classes. Must be a positive integer.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? boxDetectionsPerImage;

  /// During inference, only return proposals with a classification score greater than
  /// BoxScoreThreshold. Must be a float in the range[0, 1].
  final pulumi.Input<double>? boxScoreThreshold;

  /// Frequency to store model checkpoints. Must be a positive integer.
  final pulumi.Input<int>? checkpointFrequency;

  /// The pretrained checkpoint model for incremental training.
  final pulumi.Input<MLFlowModelJobInput>? checkpointModel;

  /// The id of a previous run that has a pretrained checkpoint for incremental training.
  final pulumi.Input<String>? checkpointRunId;

  /// Whether to use distributed training.
  final pulumi.Input<bool>? distributed;

  /// Enable early stopping logic during training.
  final pulumi.Input<bool>? earlyStopping;

  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final pulumi.Input<int>? earlyStoppingDelay;

  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final pulumi.Input<int>? earlyStoppingPatience;

  /// Enable normalization when exporting ONNX model.
  final pulumi.Input<bool>? enableOnnxNormalization;

  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final pulumi.Input<int>? evaluationFrequency;

  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final pulumi.Input<int>? gradientAccumulationStep;

  /// Image size for train and validation. Must be a positive integer.
  /// Note: The training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? imageSize;

  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<int>? layersToFreeze;

  /// Initial learning rate. Must be a float in the range [0, 1].
  final pulumi.Input<double>? learningRate;

  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final pulumi.Input<String>? learningRateScheduler;

  /// Maximum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? maxSize;

  /// Minimum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? minSize;

  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<String>? modelName;

  /// Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// Note: training run may get into CUDA OOM if the model size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? modelSize;

  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? momentum;

  /// Enable multi-scale image by varying image size by +/- 50%.
  /// Note: training run may get into CUDA OOM if no sufficient GPU memory.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<bool>? multiScale;

  /// Enable nesterov when optimizer is 'sgd'.
  final pulumi.Input<bool>? nesterov;

  /// IOU threshold used during inference in NMS post processing. Must be a float in the range [0, 1].
  final pulumi.Input<double>? nmsIouThreshold;

  /// Number of training epochs. Must be a positive integer.
  final pulumi.Input<int>? numberOfEpochs;

  /// Number of data loader workers. Must be a non-negative integer.
  final pulumi.Input<int>? numberOfWorkers;

  /// Type of optimizer.
  final pulumi.Input<String>? optimizer;

  /// Random seed to be used when using deterministic training.
  final pulumi.Input<int>? randomSeed;

  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? stepLRGamma;

  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final pulumi.Input<int>? stepLRStepSize;

  /// The grid size to use for tiling each image. Note: TileGridSize must not be
  /// None to enable small object detection logic. A string containing two integers in mxn format.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? tileGridSize;

  /// Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<double>? tileOverlapRatio;

  /// The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// Used in validation/ inference. Must be float in the range [0, 1].
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<double>? tilePredictionsNmsThreshold;

  /// Training batch size. Must be a positive integer.
  final pulumi.Input<int>? trainingBatchSize;

  /// Validation batch size. Must be a positive integer.
  final pulumi.Input<int>? validationBatchSize;

  /// IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  final pulumi.Input<double>? validationIouThreshold;

  /// Metric computation method to use for validation metrics.
  final pulumi.Input<String>? validationMetricType;

  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? warmupCosineLRCycles;

  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final pulumi.Input<int>? warmupCosineLRWarmupEpochs;

  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final pulumi.Input<double>? weightDecay;

  /// Creates a new [ImageModelSettingsObjectDetection].
  /// [advancedSettings] Settings for advanced scenarios.
  /// [amsGradient] Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  /// [augmentations] Settings for using Augmentations.
  /// [beta1] Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [beta2] Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [boxDetectionsPerImage] Maximum number of detections per image, for all classes. Must be a positive integer.
  /// [boxScoreThreshold] During inference, only return proposals with a classification score greater than
  /// [checkpointFrequency] Frequency to store model checkpoints. Must be a positive integer.
  /// [checkpointModel] The pretrained checkpoint model for incremental training.
  /// [checkpointRunId] The id of a previous run that has a pretrained checkpoint for incremental training.
  /// [distributed] Whether to use distributed training.
  /// [earlyStopping] Enable early stopping logic during training.
  /// [earlyStoppingDelay] Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// [earlyStoppingPatience] Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// [enableOnnxNormalization] Enable normalization when exporting ONNX model.
  /// [evaluationFrequency] Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  /// [gradientAccumulationStep] Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// [imageSize] Image size for train and validation. Must be a positive integer.
  /// [layersToFreeze] Number of layers to freeze for the model. Must be a positive integer.
  /// [learningRate] Initial learning rate. Must be a float in the range [0, 1].
  /// [learningRateScheduler] Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  /// [maxSize] Maximum size of the image to be rescaled before feeding it to the backbone.
  /// [minSize] Minimum size of the image to be rescaled before feeding it to the backbone.
  /// [modelName] Name of the model to use for training.
  /// [modelSize] Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// [momentum] Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  /// [multiScale] Enable multi-scale image by varying image size by +/- 50%.
  /// [nesterov] Enable nesterov when optimizer is 'sgd'.
  /// [nmsIouThreshold] IOU threshold used during inference in NMS post processing. Must be a float in the range [0, 1].
  /// [numberOfEpochs] Number of training epochs. Must be a positive integer.
  /// [numberOfWorkers] Number of data loader workers. Must be a non-negative integer.
  /// [optimizer] Type of optimizer.
  /// [randomSeed] Random seed to be used when using deterministic training.
  /// [stepLRGamma] Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  /// [stepLRStepSize] Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  /// [tileGridSize] The grid size to use for tiling each image. Note: TileGridSize must not be
  /// [tileOverlapRatio] Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// [tilePredictionsNmsThreshold] The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// [trainingBatchSize] Training batch size. Must be a positive integer.
  /// [validationBatchSize] Validation batch size. Must be a positive integer.
  /// [validationIouThreshold] IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  /// [validationMetricType] Metric computation method to use for validation metrics.
  /// [warmupCosineLRCycles] Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  /// [warmupCosineLRWarmupEpochs] Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  /// [weightDecay] Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  ImageModelSettingsObjectDetection({
    this.advancedSettings,
    this.amsGradient,
    this.augmentations,
    this.beta1,
    this.beta2,
    this.boxDetectionsPerImage,
    this.boxScoreThreshold,
    this.checkpointFrequency,
    this.checkpointModel,
    this.checkpointRunId,
    this.distributed,
    this.earlyStopping,
    this.earlyStoppingDelay,
    this.earlyStoppingPatience,
    this.enableOnnxNormalization,
    this.evaluationFrequency,
    this.gradientAccumulationStep,
    this.imageSize,
    this.layersToFreeze,
    this.learningRate,
    this.learningRateScheduler,
    this.maxSize,
    this.minSize,
    this.modelName,
    this.modelSize,
    this.momentum,
    this.multiScale,
    this.nesterov,
    this.nmsIouThreshold,
    this.numberOfEpochs,
    this.numberOfWorkers,
    this.optimizer,
    this.randomSeed,
    this.stepLRGamma,
    this.stepLRStepSize,
    this.tileGridSize,
    this.tileOverlapRatio,
    this.tilePredictionsNmsThreshold,
    this.trainingBatchSize,
    this.validationBatchSize,
    this.validationIouThreshold,
    this.validationMetricType,
    this.warmupCosineLRCycles,
    this.warmupCosineLRWarmupEpochs,
    this.weightDecay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?advancedSettings,
      'amsGradient': ?amsGradient,
      'augmentations': ?augmentations,
      'beta1': ?beta1,
      'beta2': ?beta2,
      'boxDetectionsPerImage': ?boxDetectionsPerImage,
      'boxScoreThreshold': ?boxScoreThreshold,
      'checkpointFrequency': ?checkpointFrequency,
      'checkpointModel':
          ?pulumi.Input.mapOptionalInputValue<
            MLFlowModelJobInput,
            Map<String, dynamic>
          >(checkpointModel, (value) => value.toMap()),
      'checkpointRunId': ?checkpointRunId,
      'distributed': ?distributed,
      'earlyStopping': ?earlyStopping,
      'earlyStoppingDelay': ?earlyStoppingDelay,
      'earlyStoppingPatience': ?earlyStoppingPatience,
      'enableOnnxNormalization': ?enableOnnxNormalization,
      'evaluationFrequency': ?evaluationFrequency,
      'gradientAccumulationStep': ?gradientAccumulationStep,
      'imageSize': ?imageSize,
      'layersToFreeze': ?layersToFreeze,
      'learningRate': ?learningRate,
      'learningRateScheduler': ?learningRateScheduler,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'modelName': ?modelName,
      'modelSize': ?modelSize,
      'momentum': ?momentum,
      'multiScale': ?multiScale,
      'nesterov': ?nesterov,
      'nmsIouThreshold': ?nmsIouThreshold,
      'numberOfEpochs': ?numberOfEpochs,
      'numberOfWorkers': ?numberOfWorkers,
      'optimizer': ?optimizer,
      'randomSeed': ?randomSeed,
      'stepLRGamma': ?stepLRGamma,
      'stepLRStepSize': ?stepLRStepSize,
      'tileGridSize': ?tileGridSize,
      'tileOverlapRatio': ?tileOverlapRatio,
      'tilePredictionsNmsThreshold': ?tilePredictionsNmsThreshold,
      'trainingBatchSize': ?trainingBatchSize,
      'validationBatchSize': ?validationBatchSize,
      'validationIouThreshold': ?validationIouThreshold,
      'validationMetricType': ?validationMetricType,
      'warmupCosineLRCycles': ?warmupCosineLRCycles,
      'warmupCosineLRWarmupEpochs': ?warmupCosineLRWarmupEpochs,
      'weightDecay': ?weightDecay,
    };
  }

  factory ImageModelSettingsObjectDetection.fromMap(Map<String, dynamic> map) {
    return ImageModelSettingsObjectDetection(
      advancedSettings: (() {
        final guardedValue = map['advancedSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      amsGradient: (() {
        final guardedValue = map['amsGradient'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      augmentations: (() {
        final guardedValue = map['augmentations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      beta1: (() {
        final guardedValue = map['beta1'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      beta2: (() {
        final guardedValue = map['beta2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      boxDetectionsPerImage: (() {
        final guardedValue = map['boxDetectionsPerImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      boxScoreThreshold: (() {
        final guardedValue = map['boxScoreThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      checkpointFrequency: (() {
        final guardedValue = map['checkpointFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      checkpointModel: (() {
        final guardedValue = map['checkpointModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MLFlowModelJobInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      checkpointRunId: (() {
        final guardedValue = map['checkpointRunId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      distributed: (() {
        final guardedValue = map['distributed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      earlyStopping: (() {
        final guardedValue = map['earlyStopping'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      earlyStoppingDelay: (() {
        final guardedValue = map['earlyStoppingDelay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      earlyStoppingPatience: (() {
        final guardedValue = map['earlyStoppingPatience'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enableOnnxNormalization: (() {
        final guardedValue = map['enableOnnxNormalization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      evaluationFrequency: (() {
        final guardedValue = map['evaluationFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      gradientAccumulationStep: (() {
        final guardedValue = map['gradientAccumulationStep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      imageSize: (() {
        final guardedValue = map['imageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      layersToFreeze: (() {
        final guardedValue = map['layersToFreeze'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      learningRate: (() {
        final guardedValue = map['learningRate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      learningRateScheduler: (() {
        final guardedValue = map['learningRateScheduler'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxSize: (() {
        final guardedValue = map['maxSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minSize: (() {
        final guardedValue = map['minSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      modelName: (() {
        final guardedValue = map['modelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelSize: (() {
        final guardedValue = map['modelSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      momentum: (() {
        final guardedValue = map['momentum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      multiScale: (() {
        final guardedValue = map['multiScale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nesterov: (() {
        final guardedValue = map['nesterov'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nmsIouThreshold: (() {
        final guardedValue = map['nmsIouThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      numberOfEpochs: (() {
        final guardedValue = map['numberOfEpochs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      numberOfWorkers: (() {
        final guardedValue = map['numberOfWorkers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      optimizer: (() {
        final guardedValue = map['optimizer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      randomSeed: (() {
        final guardedValue = map['randomSeed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      stepLRGamma: (() {
        final guardedValue = map['stepLRGamma'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      stepLRStepSize: (() {
        final guardedValue = map['stepLRStepSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tileGridSize: (() {
        final guardedValue = map['tileGridSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tileOverlapRatio: (() {
        final guardedValue = map['tileOverlapRatio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      tilePredictionsNmsThreshold: (() {
        final guardedValue = map['tilePredictionsNmsThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      trainingBatchSize: (() {
        final guardedValue = map['trainingBatchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      validationBatchSize: (() {
        final guardedValue = map['validationBatchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      validationIouThreshold: (() {
        final guardedValue = map['validationIouThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      validationMetricType: (() {
        final guardedValue = map['validationMetricType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      warmupCosineLRCycles: (() {
        final guardedValue = map['warmupCosineLRCycles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      warmupCosineLRWarmupEpochs: (() {
        final guardedValue = map['warmupCosineLRWarmupEpochs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      weightDecay: (() {
        final guardedValue = map['weightDecay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
